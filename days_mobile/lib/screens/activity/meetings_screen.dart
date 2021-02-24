import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/information_card_widget.dart';
import 'package:flutter/material.dart';

class MeetingsScreen extends StatefulWidget {
  MeetingsScreen({Key key}) : super(key: key);

  @override
  _MeetingsScreenState createState() => _MeetingsScreenState();
}

class _MeetingsScreenState extends State<MeetingsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          title: "Reuniões",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              InformationCard(
                title: "Reunião de entrega das notas",
                date: "12/05/2021",
                content:
                    "- Entrega das notas\n- Considerações sobre os alunos\n",
              ),
              SizedBox(
                height: height * 0.023,
              ),
              InformationCard(
                title: "Reunião de entrega das notas",
                date: "12/05/2021",
                content:
                    "- Entrega das notas\n- Considerações sobre os alunos\n",
              ),
              SizedBox(
                height: height * 0.023,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
