import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  const TextFieldWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 300,
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none),
            filled: true,
            hintText: text,
            hintStyle: const TextStyle(
              fontSize: 18,
            ),
            fillColor: Colors.white,
          ),
        ));
  }
}
