import 'package:days_mobile/models/Communication.dart';
import 'package:days_mobile/stores/student.store.dart';
import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/information_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CommunicationScreen extends StatefulWidget {
  final int id;

  CommunicationScreen({
    Key key,
    @required int this.id,
  }) : super(key: key);

  @override
  _CommunicationScreenState createState() => _CommunicationScreenState();
}

class _CommunicationScreenState extends State<CommunicationScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Communication myCommunication;

    String parseDate(String createdAt) {
      int tIndex = createdAt.indexOf('T');

      return createdAt.substring(0, tIndex);
    }

    final StudentMob studentMob = Provider.of<StudentMob>(context);
    final List<Communication> communications =
        studentMob.student.communications;

    // ? For you, young developer, reading this... I know this isn't the best way
    // ? but I am running out of time
    for (var communication in communications) {
      if (communication.id == widget.id)
        myCommunication = communication;
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          title: "Comunicação",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: width * 0.67,
                      ),
                      child: Text(
                        myCommunication.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      parseDate(myCommunication.createdAt),
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    myCommunication.content,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
