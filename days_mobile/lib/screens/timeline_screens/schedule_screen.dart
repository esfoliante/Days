import 'package:days_mobile/models/Schedule.dart';
import 'package:days_mobile/stores/student.store.dart';
import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/timeline_chunk_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

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

    final StudentMob studentMob = Provider.of<StudentMob>(context);
    final schedules = studentMob.student.schedules;

    List<Schedule> today = List<Schedule>();

    var date = DateTime.now();
    var weekDay = DateFormat('EEEE').format(date);

    for (var schedule in schedules) {
      if (schedule.dayWeek == weekDay) {
        today.add(schedule);
      }
    }

    String parseTime(String myTime) {
      int tIndex = myTime.lastIndexOf(':');
      String time = myTime.substring(0, tIndex);

      return time;
    }

    String parseHour(String time) {
      int tIndex = time.lastIndexOf(':');
      String hour = time.substring(0, tIndex);

      return hour;
    }

    String parseMinutes(String time) {
      int tIndex = time.lastIndexOf(':');
      String minutes = time.substring(tIndex + 1, tIndex + 2);

      return minutes;
    }

    bool _checkSpecial(String startsAt, String endsAt) {
      var date = DateTime.now();

      if (date.hour == double.parse(parseHour(startsAt)) &&
              date.minute > double.parse(parseMinutes(startsAt)) ||
          date.hour == double.parse(parseHour(endsAt)) && date.minute == 00) {
        return true;
      }

      return false;
    }

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
              for (var todaySchedule in today) ...[
                TimeLineChunk(
                  title: todaySchedule.subject,
                  date:
                      "${parseTime(todaySchedule.startsAt)} - ${parseTime(todaySchedule.endsAt)}",
                  isSpecial: _checkSpecial(parseTime(todaySchedule.startsAt),
                      parseTime(todaySchedule.endsAt)),
                  // isSpecial: false,
                  isFirst: today.indexOf(todaySchedule) == 0,
                  isLast: today.indexOf(todaySchedule) == today.length - 1,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
