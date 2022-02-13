// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final IconData iconData;
  TextFieldWidget(this.text,this.iconData);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Color(0xFFe7edeb),
          prefixIcon: Icon(iconData, color: Colors.grey[600]),
        ),
      ),
    );
  }
}
