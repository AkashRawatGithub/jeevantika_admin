import 'dart:developer';

import 'package:flutter/material.dart';

import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';

class AddMapContact extends StatefulWidget {
  const AddMapContact({Key key}) : super(key: key);

  @override
  State<AddMapContact> createState() => _AddMapContactState();
}

class _AddMapContactState extends State<AddMapContact> {
  final _formKey = GlobalKey<FormState>();
  var company_name_controller = TextEditingController();
  var state_controller = TextEditingController();
  var city_controller = TextEditingController();
  var phone_no_controller = TextEditingController();
  var mail_controller = TextEditingController();
  var company_add_controller = TextEditingController();
  var regastrar_name_controller = TextEditingController();
  var left_controller = TextEditingController();
  var bottom_controller = TextEditingController();
  var right_controller = TextEditingController();
  var top_controller = TextEditingController();

  var Address_controller = TextEditingController();

  final List<String> genderItems = [
    'Male',
    'Female',
  ];

  var _selected;
  List<String> _Values = ['a','b','ds','2','4','5','6'];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: pageBackground,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0,left: 4.0, top: 4.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.08,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 8.0),
                    child: Text("Map Contact", style: TextStyle(fontSize: 20,color: Colors.green),),
                  ),
                  color: Colors.white,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 8.0, top: 8.0,right: 8.0),
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Container(alignment: Alignment.centerLeft,child: Text("Contact Person Name *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                              ),
                            ],
                          ),
                          SizedBox(height: 4,),
                          custom_textField_withoutlabel(
                              company_name_controller,
                              "Enter Company Name",
                              "Please Enter Company Name",
                              Colors.black45 ,
                              SizeConfig.blockSizeVertical*1.5,
                              MediaQuery.of(context).size.width/2

                          ),

                          SizedBox(height: 15),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Container(alignment: Alignment.centerLeft,child: Text("Firm Name *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                              ),
                            ],
                          ),
                          SizedBox(height: 4,),
                          custom_textField_withoutlabel(
                              company_name_controller,
                              "Enter Company Name",
                              "Please Enter Company Name",
                              Colors.black45 ,
                              SizeConfig.blockSizeVertical*1.5,
                              MediaQuery.of(context).size.width/2

                          ),

                          SizedBox(height: 15),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Container(alignment: Alignment.centerLeft,child: Text("Mobile Number *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                              ),
                            ],
                          ),
                          SizedBox(height: 4,),
                          custom_textField_withoutlabel(
                              company_name_controller,
                              "Enter Company Name",
                              "Please Enter Company Name",
                              Colors.black45 ,
                              SizeConfig.blockSizeVertical*1.5,
                              MediaQuery.of(context).size.width/2

                          ),

                          SizedBox(height: 15),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Container(alignment: Alignment.centerLeft,child: Text("Email *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                              ),
                            ],
                          ),
                          SizedBox(height: 4,),
                          custom_textField_withoutlabel(
                              company_name_controller,
                              "Enter Company Name",
                              "Please Enter Company Name",
                              Colors.black45 ,
                              SizeConfig.blockSizeVertical*1.5,
                              MediaQuery.of(context).size.width/2

                          ),

                          SizedBox(height: 15),
                          Container(alignment: Alignment.centerLeft,child: Text("Select State*",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                          SizedBox(height: 5,),
                          Container(
                            width: MediaQuery.of(context).size.width/2,
                            height: MediaQuery.of(context).size.height/23,
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

                          SizedBox(height: 15),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Container(alignment: Alignment.centerLeft,child: Text("Enter City Name *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                              ),
                            ],
                          ),
                          SizedBox(height: 4,),
                          custom_textField_withoutlabel(
                              company_name_controller,
                              "Enter City Name",
                              "Please Enter City Name",
                              Colors.black45 ,
                              SizeConfig.blockSizeVertical*1.5,
                              MediaQuery.of(context).size.width/2

                          ),

                          SizedBox(height: 14),
                          Container(alignment: Alignment.centerLeft,child: Text("Address *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                          SizedBox(height: 5,),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: custom_largetextField_withlabel(
                              Address_controller,
                              "Enter Address...",
                              "Please Enter Address",
                              Colors.black54,
                              SizeConfig.blockSizeVertical*1.5,
                              MediaQuery.of(context).size.width/2,
                            ),),

                          SizedBox(height: 15),
                          Container(child: Text("Positioning", style: TextStyle(fontSize: 22),),),

                          SizedBox(height: 15),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Container(alignment: Alignment.centerLeft,child: Text("Top *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                              ),
                            ],
                          ),
                          SizedBox(height: 4,),
                          custom_textField_withoutlabel(
                              top_controller,
                              "Enter Top Position",
                              "Please Enter Top Position",
                              Colors.black45 ,
                              SizeConfig.blockSizeVertical*1.5,
                              MediaQuery.of(context).size.width/2
                          ),

                          SizedBox(height: 15),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Container(alignment: Alignment.centerLeft,child: Text("Right *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                              ),
                            ],
                          ),
                          SizedBox(height: 4,),
                          custom_textField_withoutlabel(
                              right_controller,
                              "Enter Right Position",
                              "Please Enter Right Position",
                              Colors.black45 ,
                              SizeConfig.blockSizeVertical*1.5,
                              MediaQuery.of(context).size.width/2
                          ),

                          SizedBox(height: 15),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Container(alignment: Alignment.centerLeft,child: Text("Bottom *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                              ),
                            ],
                          ),
                          SizedBox(height: 4,),
                          custom_textField_withoutlabel(
                              bottom_controller,
                              "Enter Bottom Position",
                              "Please Enter Bottom Position",
                              Colors.black45 ,
                              SizeConfig.blockSizeVertical*1.5,
                              MediaQuery.of(context).size.width/2
                          ),

                          SizedBox(height: 15),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Container(alignment: Alignment.centerLeft,child: Text("Left *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                              ),
                            ],
                          ),
                          SizedBox(height: 4,),
                          custom_textField_withoutlabel(
                              left_controller,
                              "Enter Left Position",
                              "Please Enter Left Position",
                              Colors.black45 ,
                              SizeConfig.blockSizeVertical*1.5,
                              MediaQuery.of(context).size.width/2
                          ),


                        ]
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.08,
                    alignment: Alignment.centerLeft,
                    color:Colors.white,
                    child: custom_button(Save,"Add ")),
              ),

            ],
          ),
        ),
      ),
    );
  }
  Save(){
    if (_formKey.currentState.validate()) {
      log("message");
    }
  }
}
