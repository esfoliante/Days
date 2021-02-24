import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/timeline_chunk_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  ScheduleScreen({Key key}) : super(key: key);

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          title: "Horário",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              TimeLineChunk(
                title: "Português",
                date: "8:00 - 9:00",
                isSpecial: true,
                isFirst: true,
                isLast: false,
              ),
              for (int i = 0; i < 20; i++) ...[
                TimeLineChunk(
                  title: "PI",
                  date: "9:05 - 10:05",
                  isSpecial: false,
                  isFirst: false,
                  isLast: false,
                ),
              ],
              TimeLineChunk(
                title: "PI",
                date: "9:05 - 10:05",
                isSpecial: false,
                isFirst: false,
                isLast: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
