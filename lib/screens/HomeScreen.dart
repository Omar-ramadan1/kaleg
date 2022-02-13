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
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsOfHome(),
              ),
            );
          },
          child: SizedBox(
            height: 100,
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 14),
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            DateFormat("yyyy-MM-dd").format(DateTime.now()),
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 10,),
                          Text("فاتوره مشتريات"),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: const [
                          Text("112"),
                                                    SizedBox(height: 10,),

                          Text(
                            "شركه كيف الشيوخ",
                            style: TextStyle(fontSize: 15),
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
