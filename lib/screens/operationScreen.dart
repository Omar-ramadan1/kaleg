// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class OperationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ListView(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Text("المخزون",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
    ],),
    Divider(
      color: Colors.black,
    ),
      Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Container(
        margin: EdgeInsets.only(right: 15),
        child: Text("الاصناف",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))
    ],),
    
      Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Text("اضافه باركود",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
    ],),  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Text("طباعه باركود",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
    ],),
    Divider(
      color: Colors.black,
    ),
      Container(
        margin: EdgeInsets.only(right: 10),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        Text("المبيعات",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
    ],),
      ),
      Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Container(
        margin: EdgeInsets.only(right: 10),
        child: Text("مبيعات",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))
    ],),  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Container(
        margin: EdgeInsets.only(right: 10),
        child: Text("مرتجعات ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))
    ],),
        Divider(
      color: Colors.black,
    ),
      Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Container(
        margin: EdgeInsets.only(right: 15),
        child: Text("المشتريات",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))
    ],),

  ],
),      
    );
  }
}