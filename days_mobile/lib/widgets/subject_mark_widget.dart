import 'package:flutter/material.dart';
import 'package:intervalprogressbar/intervalprogressbar.dart';

class SubjectMarkWidget extends StatelessWidget {
  final String name;
  final int mark;

  const SubjectMarkWidget({
    Key key,
    this.name,
    this.mark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 40.0,
            ),
            child: Text(
              "$name - $mark",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: height * 0.018,
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40.0,
              right: 40.0,
            ),
            child: IntervalProgressBar(
              direction: IntervalProgressDirection.horizontal,
              max: 20,
              progress: mark,
              intervalSize: 1,
              size: Size(width, 9),
              highlightColor: Theme.of(context).primaryColor,
              defaultColor: Theme.of(context).primaryColor.withOpacity(0.3),
              intervalColor: Colors.transparent,
              intervalHighlightColor: Colors.transparent,
              radius: 10,
            ),
          ),
        ],
      ),
    );
  }
}
