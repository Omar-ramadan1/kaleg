// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kleg/StateDependentClasses/ReceiptStateClass.dart';
import 'package:kleg/widgets/GlobalWidget/buttonwidget.dart';
import 'package:kleg/widgets/receiptScreenWidgets/DatesWidget.dart';
import 'package:kleg/widgets/receiptScreenWidgets/HeadLines.dart';
import 'package:kleg/widgets/receiptScreenWidgets/TextFieldWidget.dart';



class ReceiptScreen extends StatefulWidget {
  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  late ReceiptStateClass receiptStateClass;
   List<String> dates = [DateTime.now().toIso8601String().substring(0 , 10) , DateTime.now().toIso8601String().substring(0 , 10)];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    receiptStateClass = ReceiptStateClass(this);
  }
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
                for(int i = 0 ; i < dates.length ; i++)
                DatesWidget(dates[i] ,receiptStateClass.showDatePicker , i),
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