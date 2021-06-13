import 'package:days_mobile/stores/student.store.dart';
import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/information_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MeetingsScreen extends StatefulWidget {
  MeetingsScreen({Key key}) : super(key: key);

  @override
  _MeetingsScreenState createState() => _MeetingsScreenState();
}

class _MeetingsScreenState extends State<MeetingsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final StudentMob studentMob = Provider.of<StudentMob>(context);
    final meetings = studentMob.student.meetings;

    String parseDate(String createdAt) {
      int tIndex = createdAt.indexOf(' ');
      String date = createdAt.substring(0, tIndex);

      return "$date";
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          title: "Reuniões",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              for(var meeting in meetings) ... [
                InformationCard(
                  title: meeting.title,
                  date: parseDate(meeting.meetingDate),
                  content: meeting.content
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
