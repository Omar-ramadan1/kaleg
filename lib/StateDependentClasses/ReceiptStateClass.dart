import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class ReceiptStateClass {
  final state;

  ReceiptStateClass(this.state);

  showDatePicker(int index){
    DateTime minDateTime = DateTime(2018, 1 ,1);
    DateTime maxDateTime = DateTime(2036, 1 ,1);
    DateTime initialDateTime = DateTime.now();
    String dateFormat = "yyyy-MMMM-dd";
    DatePicker.showDatePicker(state.context,
        showTitleActions: true,
        minTime: minDateTime,
        maxTime: maxDateTime, onConfirm: (date) {
          state.setState(() {
            state.dates[index] = date.toIso8601String().substring(0 , 10);
          });
        }, currentTime: initialDateTime, locale: LocaleType.en);
   }

}