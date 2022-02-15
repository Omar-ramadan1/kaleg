import 'package:flutter/cupertino.dart';

class TitlewidgetOfOperation extends StatelessWidget {
  final String text;
  TitlewidgetOfOperation(this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            margin: EdgeInsets.only(right: 15),
            child: Text(
              text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
