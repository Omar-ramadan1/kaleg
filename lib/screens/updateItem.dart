import 'package:flutter/material.dart';

class updateItem extends StatefulWidget {
  static const routename = '/updateItem';

  const updateItem({Key? key}) : super(key: key);

  @override
  State<updateItem> createState() => _updateItemState();
}

class _updateItemState extends State<updateItem> {
  String valuechoose = "";
  List listitem = ["item1", "item2", "item3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          Container(
              width: MediaQuery.of(context).size.width / 1,
              height: 50,
              child: Directionality(
                textDirection: TextDirection.rtl,
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
                      ))),
                ),
              )),
        
          
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildmenuItem(String item) =>
      DropdownMenuItem(
        value: item,
        child: Text(item,
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
      
      ));
}
