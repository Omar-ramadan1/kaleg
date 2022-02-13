import 'package:flutter/material.dart';
import 'package:kleg/screens/SearchScreen.dart';
import 'package:kleg/screens/itemsScreen.dart';
import 'package:kleg/screens/receiptScreen.dart';
import 'package:kleg/widgets/AppBarWidget.dart';

class DetailsOfHome extends StatelessWidget {
    static const routename = '/DetailsofHome';

  const DetailsOfHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "الاصناف",
              ),
              Tab(
                text: "بحث ",
              ),
              Tab(
                text: "الفاتوره",
              ),
            ],
          ),
        ),
        body: TabBarView(
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
