import 'package:dashboard_test/src/styles.dart';
import 'package:flutter/material.dart';

class ColorRecoganizer extends StatelessWidget {
  ColorRecoganizer({this.color, this.title = ""});

  final Color? color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          CircleAvatar(radius: 4, backgroundColor: color),
          const SizedBox(
            width: 3,
          ),
          Text(
            title,
            style: textStyle(color: Colors.grey, fontSize: 10),
          )
        ],
      ),
    );
  }
}
