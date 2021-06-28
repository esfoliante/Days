import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final String date;
  final bool isSpecial;

  const ItemWidget({Key key, this.title, this.date, this.isSpecial})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 5.0,
            bottom: 5.0,
          ),
          child: Container(
            height: height * 0.01,
            width: height * 0.01,
            constraints: BoxConstraints(
              minHeight: 20.0,
              minWidth: 20.0,
            ),
            decoration: BoxDecoration(
              color: _checkColor(context, isSpecial),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
          width: width - (width * 0.3),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: width * 0.40),
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Color _checkColor(BuildContext context, bool isSpecial) {
  if (isSpecial) {
    return Theme.of(context).accentColor;
  }

  return Theme.of(context).primaryColor;
}
