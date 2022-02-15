// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kleg/screens/DetailsOfHome.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsOfHome(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: Card(
              shape: BeveledRectangleBorder(
                
                side:   BorderSide(
                  
                  color: Colors.amber,
                  width: 2.0
                )
              ),
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            DateFormat("yyyy-MM-dd").format(DateTime.now(),),
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10,),
                          Text("فاتوره مشتريات",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      
                      Spacer(),
                      Column(
                        children: const [
                          Text("112",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                                    SizedBox(height: 10,),

                          Text(
                            "شركه كيف الشيوخ",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
          ),
        )
      ]),
    );
  }
}
