import 'package:flutter/material.dart';

class Appbar_widget extends StatelessWidget with PreferredSizeWidget {


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
