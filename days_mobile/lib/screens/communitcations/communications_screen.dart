import 'package:days_mobile/widgets/communication_card_widget.dart';
import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/information_card_widget.dart';
import 'package:flutter/material.dart';

class CommunicationsScreen extends StatefulWidget {
  CommunicationsScreen({Key key}) : super(key: key);

  @override
  _CommunicationsScreenState createState() => _CommunicationsScreenState();
}

class _CommunicationsScreenState extends State<CommunicationsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          title: "Comunicações",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              CommunicationCard(
                title: "Informações do Ensino à distância",
                date: "12/05/2021",
                content:
                    "Queridos membros da comunidade escolar,\nTendo em conta...",
                route: "communication",
              ),
              SizedBox(
                height: height * 0.023,
              ),
              CommunicationCard(
                title: "Informações do Ensino à distância",
                date: "12/05/2021",
                content:
                    "Queridos membros da comunidade escolar,\nTendo em conta...",
                route: "communication",
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
