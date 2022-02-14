// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/buttonwidget.dart';

class ReceiptScreen extends StatefulWidget {
  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  @override
  DateTime? _dateTime;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white, width: 4)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                      filled: true,
                      hintText: "الرقم المرجعي",
                      hintStyle: TextStyle(
                        fontSize: 18,
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "التواريخ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
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
                      child: Container(
                          margin: EdgeInsets.only(top: 5, left: 25),
                          child: Text(
                            "اختر",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ))),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                        height: 50,
                        width: 250,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            filled: true,
                            hintText: "2022-3-15",
                            hintStyle: TextStyle(
                              fontSize: 18,
                            ),
                            fillColor: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
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
                      child: Container(
                          margin: EdgeInsets.only(top: 5, left: 25),
                          child: Text(
                            "اختر",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ))),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                        height: 50,
                        width: 250,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            filled: true,
                            hintText: "2022-3-15",
                            hintStyle: TextStyle(
                              fontSize: 18,
                            ),
                            fillColor: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    child: Text(
                      "بيانات العميل",
                      style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none),
                        filled: true,
                        hintText: "رقم العميل",
                        hintStyle: TextStyle(
                          fontSize: 18,
                        ),
                        fillColor: Colors.white,
                      ),
                    )),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none),
                        filled: true,
                        hintText: "اسم العميل",
                        hintStyle: TextStyle(
                          fontSize: 18,
                        ),
                        fillColor: Colors.white,
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "اضافه",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none),
                        filled: true,
                        hintText: "التعليق",
                        hintStyle: TextStyle(
                          fontSize: 18,
                        ),
                        fillColor: Colors.white,
                      ),
                    )),
              ),
            ],
          ),
          Positioned(
          bottom: 0,
          child: Button_Widget(
              "حفظ",
              MediaQuery.of(context).size.width
              //100
              ,
              75,
              Colors.green, () {
            
          }),
        ),
        ],
        
      ),
    );
  }
}
