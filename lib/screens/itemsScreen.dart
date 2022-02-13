import 'package:flutter/material.dart';
import 'package:kleg/screens/updateItem.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              ":عدد الوحدات",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        InkWell(
          onTap: (){
             Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => updateItem(),
                                ),
                              );
          },
          child: Container(
              height: MediaQuery.of(context).size.height / 2.8,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Colors.amber),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "اسرتي كورن فليكس",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "المخزون",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "4545",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.orange,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "السعر",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "4545",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(right: 13),
                                  child: Text(
                                    "رقم الصنف",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                              ),
                            ],
                          ),
                          Text(
                            "4545",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text("الكميه",style: TextStyle(fontSize: 25),),
                          Text("50",style: TextStyle(fontSize: 25),),
        
                        ],
                      ),
                      Column(
                        children: [
                          Text("الوحده",style: TextStyle(fontSize: 25),),
                          Container(
                            width: 100,
                            height: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    //width: 5
                                  ),
                                  
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    //width: 5
                                  )
                                )
                              ),
                              
                            ))
                        ],
                      ),
        
                    ],
                  )
                ],
              )),
        )
      ],
    ));
  }
}
