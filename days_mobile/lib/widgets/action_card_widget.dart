import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isImportant;
  final String route;

  const ActionCard(
      {Key key, this.title, this.subtitle, this.isImportant, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(
        left: 30.0,
        right: 30.0,
      ),
      child: Container(
        height: height * 0.07,
        width: width,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        constraints: BoxConstraints(
          minHeight: 60.0,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: width * 0.04,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontWeight:
                          isImportant ? FontWeight.w800 : FontWeight.w600,
                      color: Theme.of(context).accentColor,
                      fontSize: width * 0.035,
                    ),
                  ),
                ],
              ),
              FlatButton(
                minWidth: 10.0,
                child: Container(
                  height: width * 0.09,
                  width: width * 0.09,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, route),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
