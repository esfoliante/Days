import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final String content;

  const ProfileItem({
    Key key,
    this.title,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: width * 0.036,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Flexible(
          child: Text(
            content,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: width * 0.04,
            ),
          ),
        ),
      ],
    );
  }
}
