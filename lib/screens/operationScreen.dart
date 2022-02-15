// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/operationsWidgets/headlines.dart';
import '../widgets/operationsWidgets/titlewidget.dart';


class OperationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HeadLineOfOperation("المخزون"),
          Divider(
            color: Colors.black,
          ),
          TitlewidgetOfOperation("الاصناف المتوفره"),
          TitlewidgetOfOperation("اضافه باركود"),
          TitlewidgetOfOperation("طباعه باركود"),
          HeadLineOfOperation("المبيعات"),
          Divider(
            color: Colors.black,
          ),
          TitlewidgetOfOperation("المبيعات"),
          TitlewidgetOfOperation("مرتجعات"),
          HeadLineOfOperation("المشتريات"),
          Divider(
            color: Colors.black,
          ),
          TitlewidgetOfOperation("امر الشراء"),
          TitlewidgetOfOperation("فاتوره مشتريات"),
          TitlewidgetOfOperation("فاتوره مرتجعات"),
        ],
      ),
    );
  }
}
