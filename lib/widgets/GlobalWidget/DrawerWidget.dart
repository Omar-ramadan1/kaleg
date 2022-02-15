// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kleg/widgets/GlobalWidget/tapsofDrawer.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

// ignore: camel_case_types
class _DrawerWidgetState extends State<DrawerWidget> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.amber,
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.amber,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 90, bottom: 120),
                  decoration: BoxDecoration(
                    color: Color(0xFFBD954F),
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        spreadRadius: 3,
                        blurRadius: 9,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width / 9,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Color(0xFFBD954F),
                        ),
                      ),
                    ],
                  ),
                ),
                DrawerTabsWidget(Icons.settings, "الاعدادات", () {}),
                //   DrawerTabsWidget(Icons.connect_without_contact,"الاتصال",(){},),

                SwitchListTile(
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  activeColor: Colors.green,
                  activeTrackColor: Colors.white,
                  title: Container(
                      margin: EdgeInsets.only(left: 110),
                      child: Text(
                        "الاتصال",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                ),
                DrawerTabsWidget(Icons.logout, " تسجيل الخروج", () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
