import 'package:days_mobile/widgets/action_card_widget.dart';
import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatefulWidget {
  ActivityScreen({Key key}) : super(key: key);

  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          title: "Atividade",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              ActionCard(
                title: "Faltas",
                subtitle: "",
                isImportant: false,
                route: "faltas",
              ),
              SizedBox(
                height: 20.0,
              ),
              ActionCard(
                title: "Participações",
                subtitle: "",
                isImportant: false,
                route: "participations",
              ),
              SizedBox(
                height: 20.0,
              ),
              ActionCard(
                title: "Entradas e Saidas",
                subtitle: "",
                isImportant: false,
                route: "exits",
              ),
              SizedBox(
                height: 20.0,
              ),
              ActionCard(
                title: "Comunicações",
                subtitle: "",
                isImportant: false,
                route: "communications",
              ),
              SizedBox(
                height: 20.0,
              ),
              ActionCard(
                title: "Reuniões",
                subtitle: "",
                isImportant: false,
                route: "meetings",
              ),
              SizedBox(
                height: 20.0,
              ),
              ActionCard(
                title: "Testes",
                subtitle: "",
                isImportant: false,
                route: "tests",
              ),
              SizedBox(
                height: 20.0,
              ),
              ActionCard(
                title: "Média",
                subtitle: "",
                isImportant: false,
                route: "average",
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
