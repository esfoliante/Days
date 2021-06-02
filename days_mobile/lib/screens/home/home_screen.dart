import 'package:days_mobile/domain/resources/StudentResource.dart';
import 'package:days_mobile/stores/student.store.dart';
import 'package:days_mobile/widgets/action_card_widget.dart';
import 'package:days_mobile/widgets/card_widget.dart';
import 'package:days_mobile/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flash/flash.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:provider/provider.dart';
// import 'package:nfc_in_flutter/nfc_in_flutter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final StudentMob studentMob = Provider.of<StudentMob>(context);

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              height: height * 0.34,
              constraints: BoxConstraints(
                minHeight: 300.0,
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30.0,
                    right: 30.0,
                    top: 10.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: height * 0.04,
                        ),
                        onPressed: () => _scaffoldKey.currentState.openDrawer(),
                      ),
                      Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                        size: height * 0.04,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.13,
                    ),
                    CardWidget(
                      name: "${studentMob.student.name}",
                      processNumber: studentMob.student.internalNumber == null
                          ? studentMob.student.id
                          : studentMob.student.internalNumber,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                      ),
                      width: width * 0.7,
                      constraints: BoxConstraints(
                        minWidth: 170.0,
                      ),
                      child: FlatButton(
                        child: Text(
                          "ENTRADA NA ESCOLA",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: width * 0.04,
                          ),
                        ),
                        onPressed: () async {
                          _enterSchool(context);
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    ActionCard(
                      title: "Próxima aula",
                      subtitle: "Português",
                      isImportant: false,
                      route: "schedule",
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // ! Maybe a future feature, something to
                    // ! take in account later
                    /*ActionCard(
                      title: "Marcação de refeições",
                      subtitle: "",
                      isImportant: false,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),*/
                    ActionCard(
                      title: "Movimentos de conta",
                      subtitle: "${studentMob.student.transactionTotal}",
                      isImportant: true,
                      route: "cardMoviments",
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ActionCard(
                      title: "Ver atividade",
                      subtitle: "",
                      isImportant: false,
                      route: "activity",
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ActionCard(
                      title: "Ver perfil",
                      subtitle: "",
                      isImportant: false,
                      route: "profile",
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}

_enterSchool(BuildContext context) async {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;

  // ? First we will initiate our reading variable and set it to 
  // ? only read one value (in order to avoid an entrance and exit followed)
  // NDEFMessage message = await NFC.readNDEF(once: true).first;

  return showFlash(
    context: context,
    duration: Duration(
      minutes: 2,
    ),
    builder: (context, controller) {
      return Padding(
        padding: const EdgeInsets.all(
          20.0,
        ),
        child: Flash.dialog(
          controller: controller,
          backgroundColor: Colors.black.withOpacity(0.9),
          borderRadius: BorderRadius.circular(
            20.0,
          ),
          onTap: () => debugPrint("Hello world"),
          child: Container(
            height: height,
            width: width,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.01,
                      left: width * 0.02,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.close, color: Colors.white),
                      onPressed: () => controller.dismiss(),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.18,
                ),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(20),
                  color: Colors.white,
                  strokeWidth: 3,
                  // ? This dashed pattern is what keeps the gaps
                  // ? between the dashes of the square
                  dashPattern: [12, 8],
                  child: Container(
                    height: height * 0.2,
                    width: width * 0.43,
                    color: Colors.transparent,
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Text(
                    "Passa o teu telemóvel na máquina para poderes entrar ou sair da escola",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
