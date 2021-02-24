import 'package:flutter/material.dart';

class CommunicationCard extends StatelessWidget {
  final String title;
  final String date;
  final String content;
  final String route;

  const CommunicationCard(
      {Key key, this.title, this.date, this.content, this.route})
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
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
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
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: FlatButton(
            onPressed: () => Navigator.pushNamed(context, route),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        bottom: 20.0,
                      ),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: width * 0.46,
                        ),
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: height * 0.024,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: height * 0.018,
                      ),
                    ),
                  ],
                ),
                if (content != "") ...[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 2.0,
                      bottom: 20.0,
                    ),
                    child: Text(
                      content,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: height * 0.018,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
