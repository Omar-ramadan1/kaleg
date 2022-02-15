// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DrawerTabsWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final GestureTapCallback onTap;

  const DrawerTabsWidget(this.icon, this.text, this.onTap);
  // Icons.person
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                Icon(icon,size: 34,),
                Text(
                  text,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Text("")
              ],
            ),
          ),
          onTap: onTap,
        ),
        SizedBox(height: 10,)
  
      ],
    );
  }
}
