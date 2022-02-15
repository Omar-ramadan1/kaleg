import 'package:flutter/material.dart';

class TextSearchwidget extends StatelessWidget {
  final String text;
  TextSearchwidget(this.text);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white, width: 4)),
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                //width: 5
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: text,
            hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                //width: 5
              ),
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey[600],
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
