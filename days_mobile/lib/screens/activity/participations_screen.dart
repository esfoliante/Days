import 'package:days_mobile/models/Notice.dart';
import 'package:days_mobile/stores/student.store.dart';
import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/information_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

    final StudentMob studentMob = Provider.of<StudentMob>(context);
    final List<Notice> notices = studentMob.student.notices;

    String parseDate(String createdAt) {
      int tIndex = createdAt.indexOf(' ');

      return createdAt.substring(0, tIndex);
    }

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
              for(var notice in notices.reversed) ... [
                InformationCard(
                  title: notice.reason,
                  date: parseDate(notice.occurrenceDate),
                  content: notice.description,
                ),
                SizedBox(
                  height: height * 0.023,
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
