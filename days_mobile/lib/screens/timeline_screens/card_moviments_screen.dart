import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/timeline_chunk_widget.dart';
import 'package:flutter/material.dart';

class CardMovimentsScreen extends StatefulWidget {
  CardMovimentsScreen({Key key}) : super(key: key);

  @override
  _CardMovimentsScreenState createState() => _CardMovimentsScreenState();
}

class _CardMovimentsScreenState extends State<CardMovimentsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          title: "Movimentos de Cartão",
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
                title: "- 3.00€",
                date: "9:25 - 12/01",
                isSpecial: true,
                isFirst: true,
                isLast: false,
              ),
              for (int i = 0; i < 10; i++) ...[
                TimeLineChunk(
                  title: " 4.00€",
                  date: "9:25 - 12/01",
                  isSpecial: false,
                  isFirst: false,
                  isLast: false,
                ),
                TimeLineChunk(
                  title: "- 3.00€",
                  date: "9:25 - 12/01",
                  isSpecial: true,
                  isFirst: false,
                  isLast: false,
                ),
              ],
              TimeLineChunk(
                title: " 4.00€",
                date: "9:25 - 12/01",
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
