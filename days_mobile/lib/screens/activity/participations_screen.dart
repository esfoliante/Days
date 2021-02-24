import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/information_card_widget.dart';
import 'package:flutter/material.dart';

class ParticipationsScreen extends StatefulWidget {
  ParticipationsScreen({Key key}) : super(key: key);

  @override
  _ParticipationsScreenState createState() => _ParticipationsScreenState();
}

class _ParticipationsScreenState extends State<ParticipationsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          title: "Participações",
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
                title: "Palavrão na aula de Matemática",
                date: "15/05/2021",
                content: "- O aluno estava passado do clima e pronto, yah",
              ),
              SizedBox(
                height: height * 0.023,
              ),
              InformationCard(
                title: "Palavrão na aula de Português",
                date: "16/05/2021",
                content: "- O aluno estava passado do clima e pronto, yah",
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
