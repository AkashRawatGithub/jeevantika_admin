import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';
import '../../../widgets/button.dart';
import '../../../widgets/text_field.dart';


class ActiveCustomer extends StatefulWidget {
  const ActiveCustomer({Key key}) : super(key: key);

  @override
  State<ActiveCustomer> createState() => _ActiveCustomerState();
}
List<String> _Values = [];
var _selected;
List<String> item = [
  "Ravi Yadav",
  "Karan Singh",
  "Denaish jangir",
  "Ankit bairwa",
  "Binod jangir",
  "Payal kumari",
  "Pankaj singh",
  "Jatin sharma",
  "Yatra jain"
];
var data = item.length;
var company_name_controller = TextEditingController();
final int _numPages = 10;
int _currentPage = 0;

class _ActiveCustomerState extends State<ActiveCustomer> {

  @override
  Widget build(BuildContext context) {
    var pages = List.generate(
      _numPages,
          (index) => Column(
        children: [

          for (final items in item)
            Card(
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .67,
                      height: 65,
                      child: Column(
                        children: [
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              Text("$items", style: TextStyle(
                                  fontWeight: FontWeight.bold),),
                              SizedBox(width: 5,),
                              Container(decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 1)),
                                child: Row(
                                  children: [
                                    Icon(Icons.call, size: 11,),
                                    Text("9782827999",
                                      style: TextStyle(fontSize: 12),),
                                  ],
                                ),),
                              SizedBox(width: 5,),
                              Text("F/H/W : "),
                              Text("Name",
                                  style: TextStyle(color: Colors.black54)),
                              Text("Comapny : ",),
                              Text("name.company.co",
                                  style: TextStyle(color: Colors.black54)),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              Text("Business Partner: "),
                              Text("$items",
                                  style: TextStyle(color: Colors.black54)),
                              SizedBox(width: 5,),
                              Text("Coupon: "),
                              Text("Na",
                                  style: TextStyle(color: Colors.black54)),
                              Text("Service Provider: ",),
                              Text("company",
                                  style: TextStyle(color: Colors.black54)),
                            ],
                          ),
                        ],
                      )),

                  SizedBox(width: 55,),
                  Container(width: MediaQuery
                      .of(context)
                      .size
                      .width * .1, child: Text("dd/mm/yyyy"),),
                  Container(child: Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        child: FloatingActionButton(
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.zero),
                          backgroundColor: pageBackground,
                          child: Icon(
                            Icons.settings, size: 18, color: Colors.black,),
                          onPressed: () {
                            setState(() {

                            });
                          },
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 25,
                        width: 25,
                        child: FloatingActionButton(
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.zero),
                          backgroundColor: pageBackground,
                          child: Icon(Icons.currency_rupee, size: 18,
                            color: Colors.black,),
                          onPressed: () {
                            setState(() {

                            });
                          },
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 25,
                        width: 25,
                        child: FloatingActionButton(
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.zero),
                          backgroundColor: pageBackground,
                          child: Icon(Icons.travel_explore, size: 18,
                            color: Colors.black,),
                          onPressed: () {
                            setState(() {

                            });
                          },
                        ),
                      ),
                    ],
                  ),)
                ],
              ),
            )

        ],
      ),
    );

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: pageBackground,
        child: Column(
          children: [

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
                      custom_textField_withlabel2(
                          company_name_controller,
                          "Enter F/H/W Name",
                          Colors.green,
                          15,
                          "Please Enter F/H/W Name",
                          "F/H/W Name*",
                          true
                      ),SizedBox(height: 10,width: 10),
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
                            hint: Text('Select State',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
                      SizedBox(height: 10,width: 10,),
                      custom_textField_withlabel2(
                          company_name_controller,
                          "Enter Phone No.",
                          Colors.green,
                          15,
                          "Please Enter Phone No.",
                          "Phone No.*",
                          true
                      ),
                      custom_button(Save,"Search"),
                      custom_Searchbutton(Save,"Export"),
                    ],
                  ),
                ),
              ),
            ),
            pages[_currentPage],
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                ],
              ),
            )

          ],
        ),
      ),
    );

  }
  Save(){
    log(data.toString());
  }
}