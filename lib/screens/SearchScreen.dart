// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Container(
                  margin: EdgeInsets.only(top: 10,right: 20),
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 8,left: 18),
                    child: Text("باركود",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 8,left: 18),
                    child: Text("رقم",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
                  
          ],
        ),
        SizedBox(height: 20,),
         Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                  
                      decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white,width: 4)
                      ),
                      child: TextFormField(
                        
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                //width: 5
                              ),
                              borderRadius: BorderRadius.circular(8),

                            ),
                            hintText: "بحث (اسم باركود رقم الصنف)" ,
                            hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.white,
                              //width: 5
                            ),
                            
                            ),
                                      prefixIcon: Icon(Icons.search, color: Colors.grey[600],size: 30,),

                            ),
                            
                      ),
                    ),
                  )

      ],)

      
    );
  }
}