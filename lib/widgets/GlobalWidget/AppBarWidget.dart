// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget with PreferredSizeWidget {


  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.grey, size: 40),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent.withOpacity(0.05),
    );
  }

  @override
  // TODO: implement preferredSize

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
