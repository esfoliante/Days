import 'package:days_mobile/domain/resources/AbsencesResource.dart';
import 'package:days_mobile/models/Absence.dart';
import 'package:days_mobile/stores/student.store.dart';
import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/timeline_chunk_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FaltasScreen extends StatefulWidget {
  FaltasScreen({Key key}) : super(key: key);

  @override
  _FaltasScreenState createState() => _FaltasScreenState();
}

class _FaltasScreenState extends State<FaltasScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Future<List<Absence>> absences() async {
      List<Absence> absences = await AbsencesResource.getAbsences(context);

      print(absences);
      return absences;
    }

    String parseDate(String createdAt) {
      int tIndex = createdAt.indexOf(' ');
      String date = createdAt.substring(0, tIndex);

      return "$date";
    }

    bool checkDate(String createdAt) {
      DateTime now = new DateTime.now();
      DateTime date = new DateTime(now.year, now.month, now.day);

      print(date.toString());

      if (parseDate(date.toString()) == parseDate(createdAt)) return true;

      return false;
    }

    Widget _buildLoadingBar() {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          title: "Faltas",
        ),
      ),
      body: FutureBuilder(
          future: AbsencesResource.getAbsences(context),
          builder: (context, AsyncSnapshot<List<Absence>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return _buildLoadingBar();
            }

            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.05,
                    ),
                    for (var element in snapshot.data)
                      TimeLineChunk(
                        title: element.className,
                        date: parseDate(element.absenceDate),
                        isSpecial: checkDate(element.absenceDate),
                        isFirst: snapshot.data.indexOf(element) == 0,
                        isLast: snapshot.data.indexOf(element) ==
                            snapshot.data.length - 1,
                      ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
