// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kleg/screens/updateItem.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
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
                                  builder: (context) => const updateItem(),
                                ),
                              );
          },
          child: Container(
              height: MediaQuery.of(context).size.height / 2.8,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Colors.amber),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
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
                          const Text(
                            "المخزون",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: const [
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
                        children: const [
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
                                  margin: const EdgeInsets.only(right: 13),
                                  child: const Text(
                                    "رقم الصنف",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                              const CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                              ),
                            ],
                          ),
                          const Text(
                            "4545",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: const [
                          Text("الكميه",style: TextStyle(fontSize: 25),),
                          Text("50",style: TextStyle(fontSize: 25),),
        
                        ],
                      ),
                      Column(
                        children: [
                          const Text("الوحده",style: TextStyle(fontSize: 25),),
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide:  BorderSide(
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
