import 'package:flutter/material.dart';

import '../widgets/GlobalWidget/buttonwidget.dart';
import '../widgets/barcodewidgets/textfieldwidget.dart';

class BarCodeScreen extends StatelessWidget {
    static const routeName = '/BarCodeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
             TextFeildWidget("بحث باركود"),
    
             TextFeildWidget("1"),

             TextFeildWidget("اسم الصنف"),

               TextFeildWidget("الوحده"),

              TextFeildWidget("السعر"),

                TextFeildWidget("عنوان الطابعه"),

            ],
          ),
            Positioned(
          bottom: 0,
          child: Button_Widget(
              "اقتران",
              MediaQuery.of(context).size.width
              //100
              ,
              75,
              Colors.green, () {
            
          }),
        ),
        ],
      ),

      
    );
  }
}