// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kleg/widgets/HomeScreen/InfoCard.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children:[
        InfoCard("123","فاتوره مشتريات" ,DateTime.now().toIso8601String().substring(0,10)),
        InfoCard("124","فاتوره مشتريات" , DateTime.now().toIso8601String().substring(0,10)),
        InfoCard("125","فاتوره مشتريات" , DateTime.now().toIso8601String().substring(0,10)),
      ]),
    );
  }
}
