import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/information_card_widget.dart';
import 'package:flutter/material.dart';

class CommunicationScreen extends StatefulWidget {
  CommunicationScreen({
    Key key,
  }) : super(key: key);

  @override
  _CommunicationScreenState createState() => _CommunicationScreenState();
}

class _CommunicationScreenState extends State<CommunicationScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
                    Text(
                      "Comunicado aos pais",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "12-03-2021",
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
                Text(
                  "Quando sentia na casa a voz de rezas, fugia, ia para o fundo da quinta, sob as trepadeiras do mirante, ler o seu Voltaire: ou então partia a desabafar com o seu velho amigo, o coronel Sequeira, que vivia numa quinta a Queluz.",
                  style: TextStyle(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
