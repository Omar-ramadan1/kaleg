// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DatesWidget extends StatelessWidget {
  final Function(int index) showDatePicker;
  final String date;
  final int index;
  const DatesWidget(this.date ,this.showDatePicker,this.index);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white, width: 4),
                ),
                child: MaterialButton(
                  onPressed: ()=> showDatePicker(index),
                  child: Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Center(
                        child: Text(
                          "اختر",
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )),
                )),
            SizedBox(
                height: 50,
                width: 250,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    filled: true,
                    hintText: date,
                    hintStyle: const TextStyle(
                      fontSize: 18,
                    ),
                    fillColor: Colors.white,
                  ),
                )),
          ],
        )
      ],
    );
  }
}