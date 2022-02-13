import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kleg/screens/TapScreen.dart';
import 'package:intl/intl.dart';

import '../widgets/TextFieldWidget.dart';

class LoginPage extends StatelessWidget {
  static const routename = '/LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Container(
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 80),
            height: MediaQuery.of(context).size.height / 1.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(90),
                topLeft: Radius.circular(90),
                bottomLeft: Radius.circular(90),
                bottomRight: Radius.circular(90),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 120, left: 45, right: 50),
              child: Center(
                child: Column(
                  children: [
                    TextFieldWidget("ادخل رقم الهاتف", Icons.phone),
                    SizedBox(
                      height: 20,
                    ),
                    TextFieldWidget("ادخل كلمه المرور", Icons.lock),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TapScreen(),
                                ),
                              );
                            },
                            color: Colors.amber,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                "تسجيل الدخول",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
