import 'package:days_mobile/stores/student.store.dart';
import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/timeline_chunk_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExitsScreen extends StatefulWidget {
  ExitsScreen({Key key}) : super(key: key);

  @override
  _ExitsScreenState createState() => _ExitsScreenState();
}

class _ExitsScreenState extends State<ExitsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final StudentMob studentMob = Provider.of<StudentMob>(context);
    final entrances = studentMob.student.entrances;

    String parseDate(String createdAt) {
      int tIndex = createdAt.indexOf('T');
      String date = createdAt.substring(0, tIndex - 1);
      String time =
          createdAt.substring(tIndex + 1, createdAt.lastIndexOf(':') - 1);

      return "$time - $date";
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          title: "Entradas e Saidas",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              for (var entrance in entrances.reversed)
                TimeLineChunk(
                  title: entrance.actionType == "Entrada" ? 'Entrada' : "Saída",
                  date: parseDate(entrance.createdAt),
                  isSpecial: entrance.actionType == "Saída",
                  isFirst: entrances.indexOf(entrance) == entrances.length - 1,
                  isLast: entrances.indexOf(entrance) == 0,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
