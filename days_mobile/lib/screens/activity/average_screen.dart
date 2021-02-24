import 'package:days_mobile/widgets/average_custom_appbar.dart';
import 'package:days_mobile/widgets/average_widget.dart';
import 'package:days_mobile/widgets/subject_mark_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:intervalprogressbar/intervalprogressbar.dart';

class AverageScreen extends StatefulWidget {
  AverageScreen({Key key}) : super(key: key);

  @override
  _AverageScreenState createState() => _AverageScreenState();
}

class _AverageScreenState extends State<AverageScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AverageCustomAppbar(
            title: "Média",
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Center(
                      child: AverageWidget(
                        mark: 18,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SubjectMarkWidget(
                      name: "Português",
                      mark: 15,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SubjectMarkWidget(
                      name: "Programação Internet",
                      mark: 17,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SubjectMarkWidget(
                      name: "Matemática",
                      mark: 17,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SubjectMarkWidget(
                      name: "Técnicas de Desenvolvimento Multimédia",
                      mark: 17,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Center(
                      child: AverageWidget(
                        mark: 18,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SubjectMarkWidget(
                      name: "Português",
                      mark: 15,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SubjectMarkWidget(
                      name: "Programação Internet",
                      mark: 17,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SubjectMarkWidget(
                      name: "Matemática",
                      mark: 17,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SubjectMarkWidget(
                      name: "Técnicas de Desenvolvimento Multimédia",
                      mark: 17,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Center(
                      child: AverageWidget(
                        mark: 18,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SubjectMarkWidget(
                      name: "Português",
                      mark: 15,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SubjectMarkWidget(
                      name: "Programação Internet",
                      mark: 17,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SubjectMarkWidget(
                      name: "Matemática",
                      mark: 17,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SubjectMarkWidget(
                      name: "Técnicas de Desenvolvimento Multimédia",
                      mark: 17,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
