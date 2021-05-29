import 'package:days_mobile/domain/resources/AccountMovementResource.dart';
import 'package:days_mobile/models/AccountMovement.dart';
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

    Future<List<AccountMovement>> movements() async {
      List<AccountMovement> movements =
          await AccountMovementResource.getMovements(context);

      return movements;
    }

    String parseDate(String createdAt) {
      int tIndex = createdAt.indexOf('T');

      return createdAt.substring(0, tIndex - 1);
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
          title: "Movimentos de Cartão",
        ),
      ),
      body: FutureBuilder(
          future: movements(),
          builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
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
                        title: element.isDebt == "1" ? "-${element.amount}€" : "${element.amount}€",
                        date: parseDate(element.createdAt),
                        isSpecial: element.isDebt == "1",
                        isFirst: snapshot.data.indexOf(element) == 0,
                        isLast: snapshot.data.indexOf(element) == snapshot.data.length - 1,
                      ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
