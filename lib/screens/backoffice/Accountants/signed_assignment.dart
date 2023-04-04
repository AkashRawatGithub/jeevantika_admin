import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

import '../../../widgets/button.dart';
import '../../../widgets/text_field.dart';



class SignedAssignment extends StatefulWidget {
  const SignedAssignment({Key key}) : super(key: key);

  @override
  State<SignedAssignment> createState() => _SignedAssignmentState();
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
  "Yatra jain",
  "Binod jangir",
  "Payal kumari",
  "Pankaj singh",
  "Binod jangir",
  "Payal kumari",
  "Pankaj singh",
];
var data = item.length;
var company_name_controller = TextEditingController();
final int _numPages = 10;

class _SignedAssignmentState extends State<SignedAssignment> {

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
                          .width * .60,
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

                            ],
                          ),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              Text("Comapny : ",),
                              Text("name.company.co",
                                  style: TextStyle(color: Colors.black54)),
                            ],
                          ),
                        ],
                      )),

                  Container(width: MediaQuery
                      .of(context)
                      .size
                      .width * .1, child: Text("Payment type: cash"),),
                  SizedBox(width: 218,),
                  Container(
                    height: 25,
                    width: 25,
                    child: FloatingActionButton(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.paypal, size: 18, color: Colors.white,),
                      onPressed: () {
                        setState(() {

                        });
                      },
                    ),
                  )
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

            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Signed Assignment",
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
                      custom_textField_withlabel2(
                          company_name_controller,
                          "Enter Folio No.",
                          Colors.green,
                          15,
                          "Please Enter Folio No.",
                          "Folio No.*",
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


                      // SearchableDropdown.single(
                      //   // items: items,
                      //   value: _selectedGender,
                      //   hint: "Select one",
                      //   searchHint: "Select one",
                      //   onChanged: (value) {
                      //     setState(() {
                      //       _selectedGender = value;
                      //     });
                      //   },
                      //   isExpanded: true,
                      // ),


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
                            hint: Text('Select Backoffice',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
                            hint: Text('Select Coupon Map to',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
                      custom_button(Save,"Search"),
                      custom_Searchbutton(Save,"Export"),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              color: Colors.white,
              child: Table(
                children: [
                  for (final items in item)
                    TableRow(children: [

                      Container(child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            SizedBox(height: 12,),
                            Row(
                              children: [
                                Text("$items", style: TextStyle(
                                    fontWeight: FontWeight.bold),),
                                SizedBox(width: 5,),

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

                                Text("Service Provider: ",),
                                Text("company",
                                    style: TextStyle(color: Colors.black54)),
                              ],
                            ),
                          ],
                        ),
                      )),
                      Container(child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Folio :', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('878787'),
                        ],
                      ),alignment: Alignment.center,height: 50,),
                    ]),
                ],
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