import 'dart:developer';
import 'package:flutter/material.dart';

import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';

class AddCouponCode extends StatefulWidget {
  const AddCouponCode({Key key}) : super(key: key);

  @override
  State<AddCouponCode> createState() => _AddCouponCodeState();
}

class _AddCouponCodeState extends State<AddCouponCode> {
  final _formKey = GlobalKey<FormState>();
  var company_name_controller = TextEditingController();

  var _selected;
  List<String> _Values = ['Backoffice','Accountant','Channel Partner'];

  var _newValue;
  List<String> _newlist = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
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
                    child: Text("Add Coupon Code", style: TextStyle(fontSize: 20,color: Colors.green),),
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
                          Container(alignment: Alignment.centerLeft,child: Text("Select Department *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
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
                                hint: Text('Select Department',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
                          Container(alignment: Alignment.centerLeft,child: Text("Select Employee *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
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
                                hint: Text('Select Employee',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
                    child: custom_button(Save,"Add Coupon ")),
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
