import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/timeline_chunk_widget.dart';
import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          title: "Faltas",
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
                date: "8:00 - 12/02/2021",
                isSpecial: true,
                isFirst: true,
                isLast: false,
              ),
              for (int i = 0; i < 20; i++) ...[
                TimeLineChunk(
                  title: "PI",
                  date: "9:05 - 12/02/2021",
                  isSpecial: false,
                  isFirst: false,
                  isLast: false,
                ),
              ],
              TimeLineChunk(
                title: "PI",
                date: "9:05 - 12/02/2021",
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
