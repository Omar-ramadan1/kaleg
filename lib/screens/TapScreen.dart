import 'package:flutter/material.dart';
import 'package:kleg/screens/HomeScreen.dart';
import 'package:kleg/screens/operationScreen.dart';
import 'package:kleg/widgets/DrawerWidget.dart';

import '../widgets/AppBarWidget.dart';

class TapScreen extends StatefulWidget {
  static const routename = '/TapScreen';
  const TapScreen({Key? key}) : super(key: key);

  @override
  State<TapScreen> createState() => _TapScreenState();
}

class _TapScreenState extends State<TapScreen> {
  final List<Widget> _pages = [OperationScreen(),HomeScreen()];
  int _selectedPageIndex = 0;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Appbar_widget(),
      endDrawer: Drawer_Widget(),
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
