// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kleg/screens/HomeScreen.dart';
import 'package:kleg/screens/operationScreen.dart';
import 'package:kleg/widgets/GlobalWidget/DrawerWidget.dart';

import '../widgets/GlobalWidget/AppBarWidget.dart';

class TapScreen extends StatefulWidget {
  static const routename = '/TapScreen';
  const TapScreen({Key? key}) : super(key: key);

  @override
  State<TapScreen> createState() => _TapScreenState();
}

class _TapScreenState extends State<TapScreen> {
  final List<Widget> _pages = [ OperationScreen(),HomeScreen()];
  int _selectedPageIndex = 0;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppbarWidget(),
      endDrawer: DrawerWidget(),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: (index) {
          setState(() {
            _selectedPageIndex = index;
          });
        },
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.amber,
            icon: Icon(
              Icons.label,
              size: 40,
            ),
            label: "العمليات",
          ),
             BottomNavigationBarItem(
            backgroundColor: Colors.amber,
            icon: Icon(
              Icons.home,
              size: 40,
            ),
            label: "الرئيسيه",
          ),
        ],
      ),
    );
  }
}
