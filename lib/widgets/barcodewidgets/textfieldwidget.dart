import 'package:flutter/material.dart';

class TextFeildWidget extends StatelessWidget {
  final String text;
  TextFeildWidget(this.text);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: EdgeInsets.only(top: 15),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
