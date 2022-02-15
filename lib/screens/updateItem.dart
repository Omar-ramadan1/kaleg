// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kleg/widgets/GlobalWidget/buttonwidget.dart';

class updateItem extends StatefulWidget {
  static const routename = '/updateItem';

  const updateItem({Key? key}) : super(key: key);

  @override
  State<updateItem> createState() => _updateItemState();
}

class _updateItemState extends State<updateItem> {
  List<String> items = ["حبه", "كرتون", "باكت"];
  String? value;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      value = items[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 250,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white, width: 4)),
                  child: DropdownButton<String>(
                    value: value,
                    isExpanded: true,
                    items: items.map(buildmenuItem).toList(),
                    onChanged: (value) {
                      setState(() {
                        this.value = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 1,
                  height: 50,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white, width: 4)),
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
                            hintText: "40",
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.white,
                              //width: 5
                            ))),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Button_Widget("تعديل", MediaQuery.of(context).size.width, 75,
                Colors.orange, () {}),
          ),
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildmenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ));
}
