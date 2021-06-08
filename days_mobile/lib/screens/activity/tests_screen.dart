import 'package:days_mobile/models/Assessment.dart';
import 'package:days_mobile/stores/student.store.dart';
import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/information_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

    final StudentMob studentMob = Provider.of<StudentMob>(context);
    final List<Assessment> assessments = studentMob.student.assessments;

    String parseDate(String createdAt) {
      int tIndex = createdAt.indexOf(' ');

      return createdAt.substring(0, tIndex);
    }

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
              for(var assessment in assessments) ... [
                InformationCard(
                  title: assessment.subject,
                  date: parseDate(assessment.assessmentDate),
                  content: assessment.contents,
                ),
                SizedBox(
                  height: height * 0.023,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
