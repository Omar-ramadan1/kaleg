import 'package:flutter/material.dart';

class HeadLineOfOperation extends StatelessWidget {
  final String text;
  HeadLineOfOperation(this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            margin: EdgeInsets.only(right: 15),
            child: Text(
              text,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
