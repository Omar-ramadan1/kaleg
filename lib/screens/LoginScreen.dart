// ignore_for_file: file_names, unnecessary_import, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kleg/screens/TapScreen.dart';

import '../widgets/TextFieldWidget.dart';

class LoginPage extends StatelessWidget {
  static const routename = '/LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          const Text(
            "Login",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            height: MediaQuery.of(context).size.height / 1.5,
            decoration: decorationBox,
            child: Container(
              margin: const EdgeInsets.only(top: 120, left: 45, right: 50),
              child: Center(
                child: Column(
                  children: [
                    TextFieldWidget("ادخل رقم الهاتف", Icons.phone),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldWidget("ادخل كلمه المرور", Icons.lock),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 50),
                          width: double.infinity,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const TapScreen(),
                                ),
                              );
                            },
                            color: Colors.amber,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16.0),
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

BoxDecoration decorationBox = const BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(90),
    topLeft: Radius.circular(90),
    bottomLeft: Radius.circular(90),
    bottomRight: Radius.circular(90),
  ),
);
