import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';
import '../../../widgets/button.dart';
import '../../../widgets/text_field.dart';
import 'active_customers.dart';


class TodoList extends StatefulWidget {
  const TodoList({Key key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}
List<String> _Values = [];
var _selected;
var company_name_controller = TextEditingController();

class _TodoListState extends State<TodoList> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: pageBackground,
        child: Column(
          children: [

            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "To Do List",
                  style: TextStyle(fontSize: 20, color: Colors.green),
                ),
              ),
              color: Colors.white,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 4.0,),
              child: Form(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [

                      SizedBox(height: 10,width: 10 ),
                      custom_textField_withlabel2(
                          company_name_controller,
                          "Enter Customer Name",
                          Colors.green,
                          15,
                          "Please Enter Customer Name",
                          "Customer Name*",
                          true
                      ),
                      SizedBox(height: 10,width: 10),
                      Container(
                        width: 220,
                        height: 30.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                              width: 0.40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 1.0),
                          child: DropdownButton<String>(

                            underline: SizedBox(height: 0,),
                            isExpanded: true,
                            value: _selected,
                            hint: Text('Select Companies',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                            items: _Values.map((item) {
                              return DropdownMenuItem(
                                child: new Text(item),
                                value: item,
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _selected = value;
                              });
                            },
                          ),
                        ),
                      ),

                      SizedBox(height: 10,width: 10),
                      custom_textField_withlabel2(
                          company_name_controller,
                          "Enter RTA Name",
                          Colors.green,
                          15,
                          "Please Enter RTA Name",
                          "RTA Name*",
                          true
                      ),
                      SizedBox(height: 10,width: 10),
                      Container(
                        width: 220,
                        height: 30.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                              width: 0.40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 1.0),
                          child: DropdownButton<String>(

                            underline: SizedBox(height: 0,),
                            isExpanded: true,
                            value: _selected,
                            hint: Text('Select Process',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                            items: _Values.map((item) {
                              return DropdownMenuItem(
                                child: new Text(item),
                                value: item,
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _selected = value;
                              });
                            },
                          ),
                        ),
                      ),
                      custom_Searchbutton(Save,"Export"),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Table(
                  columnWidths: {
                    1: FlexColumnWidth(2.5),
                    2: FlexColumnWidth(2.5),
                    3: FlexColumnWidth(2.5),
                  },
                  border: TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(children: [
                      Container(child: Text('S.No.', style: TextStyle(fontWeight: FontWeight.bold)) ,alignment: Alignment.center,height: 50,),
                      Container(child: Text('Name of Client', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Company', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Folio No.', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('RTA Name', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Process', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Request by Jeevantika', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Date of Request', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Request by You', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Date of Action	', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Action', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                    ]),

                    TableRow(children: [
                      Container(child: Padding(
                        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                        child: Text('1', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4.0, top: 4, bottom: 4),
                                  child: Container(
                                    decoration: BoxDecoration(color: Colors.green,
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    child: GestureDetector(
                                        child: TextButton(onPressed: () {
                                          setState(() {});
                                        },
                                            child: Text("View",
                                              style: TextStyle(
                                                  color: Colors.white),))),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ), alignment: Alignment.center,
                      ),
                    ]),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );

  }
  Save(){
    log(data.toString());
  }
}