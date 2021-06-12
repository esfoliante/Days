import 'package:days_mobile/models/Communication.dart';
import 'package:days_mobile/stores/student.store.dart';
import 'package:days_mobile/widgets/communication_card_widget.dart';
import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/information_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CommunicationsScreen extends StatefulWidget {
  CommunicationsScreen({Key key}) : super(key: key);

  @override
  _CommunicationsScreenState createState() => _CommunicationsScreenState();
}

class _CommunicationsScreenState extends State<CommunicationsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final StudentMob studentMob = Provider.of<StudentMob>(context);
    final List<Communication> communications = studentMob.student.communications;

    String parseDate(String createdAt) {
      int tIndex = createdAt.indexOf('T');

      return createdAt.substring(0, tIndex);
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          title: "Comunicações",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              for(var communication in communications) ... [
                CommunicationCard(
                  title: communication.title,
                  date: parseDate(communication.createdAt),
                  content: communication.content,
                  route: "communication/${communication.id}",
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
