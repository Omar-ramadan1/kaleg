// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/searchwidgets/textseachwidget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Container(
                  margin: EdgeInsets.only(top: 10,right: 20),
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 8,left: 18),
                    child: Text("باركود",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 8,left: 18),
                    child: Text("رقم",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
                  
          ],
        ),
        SizedBox(height: 20,),
         TextSearchwidget("بحث (اسم باركود رقم الصنف)")

      ],)

      
    );
  }
}