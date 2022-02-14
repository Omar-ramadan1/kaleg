// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/buttonwidget.dart';
import '../widgets/receiptScreenWidgets/TextFieldWidget.dart';
import '../widgets/receiptScreenWidgets/DatesWidget.dart';
import '../widgets/receiptScreenWidgets/HeadLines.dart';

class ReceiptScreen extends StatefulWidget {
  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: ListView(
              children: [
                TextFieldWidget("الرقم المرجعي"),
                Headlines("التواريخ"),
                DatesWidget(),
                DatesWidget(),
                Headlines("بيانات العميل"),
                TextFieldWidget("رقم العميل"),
                TextFieldWidget("اسم العميل"),
                Headlines("اضافه"),
                TextFieldWidget("التعليق"),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Button_Widget("حفظ", MediaQuery.of(context).size.width, 75,
                Colors.green, () {}),
          ),
        ],
      ),
    );
  }
}