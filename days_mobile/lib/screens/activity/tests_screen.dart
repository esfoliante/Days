import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/information_card_widget.dart';
import 'package:flutter/material.dart';

class TestsScreen extends StatefulWidget {
  TestsScreen({Key key}) : super(key: key);

  @override
  _TestsScreenState createState() => _TestsScreenState();
}

class _TestsScreenState extends State<TestsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          title: "Testes",
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
                title: "Português",
                date: "12/03/2021",
                content:
                    "- Fernando Pessoa (ortónimo)\n- Alberto Caeiro\n- Coesão Textual\n",
              ),
              SizedBox(
                height: height * 0.023,
              ),
              InformationCard(
                title: "Matemática",
                date: "12/03/2021",
                content: "",
              ),
              SizedBox(
                height: height * 0.023,
              ),
              InformationCard(
                title: "Programação Internet",
                date: "12/03/2021",
                content: "- PHP\n- HTML\n- CSS\n",
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
