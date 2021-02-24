import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/timeline_chunk_widget.dart';
import 'package:flutter/material.dart';

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
              TimeLineChunk(
                title: "Saida",
                date: "15:00 - 12/01/2021",
                isSpecial: true,
                isFirst: true,
                isLast: false,
              ),
              for (int i = 0; i < 20; i++) ...[
                TimeLineChunk(
                  title: "Entrada",
                  date: "08:00 - 12/01/2021",
                  isSpecial: false,
                  isFirst: false,
                  isLast: false,
                ),
                TimeLineChunk(
                  title: "Saida",
                  date: "15:00 - 12/01/2021",
                  isSpecial: true,
                  isFirst: false,
                  isLast: false,
                ),
              ],
              TimeLineChunk(
                title: "Entrada",
                date: "08:00 - 12/01/2021",
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
