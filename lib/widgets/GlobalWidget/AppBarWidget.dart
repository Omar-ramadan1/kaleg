// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget with PreferredSizeWidget {


  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.grey, size: 40),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent.withOpacity(0.05),
      title: Container(
       
        child: Container(
           margin: EdgeInsets.only(left: 120),
           width: 150,

          child: Image.asset("assets/images/ktaf.png"))
        ),
    );
  }

  @override
  // TODO: implement preferredSize

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

