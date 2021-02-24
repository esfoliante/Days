import 'package:days_mobile/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class TimeLineChunk extends StatelessWidget {
  final String title;
  final String date;
  final bool isSpecial;
  final bool isFirst;
  final bool isLast;

  const TimeLineChunk({
    Key key,
    this.title,
    this.date,
    this.isSpecial,
    this.isFirst,
    this.isLast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
        left: width * 0.1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isFirst) ...[
            Padding(
              padding: EdgeInsets.only(left: width * 0.019),
              child: Container(
                width: 3.0,
                height: 30.0,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
          ItemWidget(
            title: title,
            date: date,
            isSpecial: isSpecial,
          ),
          if (isLast) ...[
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.019,
                bottom: 30.0,
              ),
              child: Container(
                width: 3.0,
                height: 20.0,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ] else ...[
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.019,
              ),
              child: Container(
                width: 3.0,
                height: 20.0,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
