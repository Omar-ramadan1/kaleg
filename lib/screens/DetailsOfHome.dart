// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kleg/screens/SearchScreen.dart';
import 'package:kleg/screens/itemsScreen.dart';
import 'package:kleg/screens/receiptScreen.dart';

class DetailsOfHome extends StatelessWidget {
    static const routeName = '/DetailsOfHome';

  const DetailsOfHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          bottom: const TabBar(
            labelStyle: TextStyle(fontSize: 20 , fontWeight: FontWeight.w900),
            tabs: [
              Tab(
                text: "الاصناف",
              ),
              Tab(
                text: "بحث",
              ),
              Tab(
                text: "الفاتوره",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ItemScreen(),
            SearchScreen(),
            ReceiptScreen(),
          ],
        ),
      ),
    );
  }
}
