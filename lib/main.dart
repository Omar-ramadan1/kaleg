import 'package:flutter/material.dart';
import 'package:kleg/screens/DetailsOfHome.dart';
import 'package:kleg/screens/TapScreen.dart';
import 'package:kleg/screens/LoginScreen.dart';
import 'package:kleg/screens/updateItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        LoginPage.routename:(ctx)=>LoginPage(),
        TapScreen.routename:(ctx)=>const TapScreen(),
        DetailsOfHome.routeName:(ctx)=>const DetailsOfHome(),
        updateItem.routename:(ctx)=>const updateItem(),

      },
    );
  }
}

