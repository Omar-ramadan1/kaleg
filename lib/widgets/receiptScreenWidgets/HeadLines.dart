// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Headlines extends StatelessWidget {
final String text;

  const Headlines(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Text(
        text,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold , letterSpacing: 2),
      ),
    );
  }
}
