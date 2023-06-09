import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:jeevantika_Web/utils/screen_size.dart';

import '../../widgets/appbar_bottombar.dart';
import '../../widgets/button.dart';
import '../../widgets/get_drawer.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';

class AddCompany extends StatefulWidget {
  const AddCompany({Key key}) : super(key: key);

  @override
  State<AddCompany> createState() => _AddCompanyState();
}

class _AddCompanyState extends State<AddCompany> {
  final _formKey = GlobalKey<FormState>();
  var company_name_controller = TextEditingController();
  var state_controller = TextEditingController();
  var city_controller = TextEditingController();
  var phone_no_controller = TextEditingController();
  var mail_controller = TextEditingController();
  var company_add_controller = TextEditingController();
  var regastrar_name_controller = TextEditingController();
  var security_code_controller = TextEditingController();
  var isin_controller = TextEditingController();
  var security_id_controller = TextEditingController();
  var cmp_controller = TextEditingController();

  List<String> _values = ['a','b','ds','2','4','5','6'];
  var _selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      // drawer: getDrawer(context),
      drawerEnableOpenDragGesture: false,
      drawerScrimColor: Colors.transparent,
      body: Row(
        children: [
          getDrawer(context),
          Expanded(
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
                          child: Text("Add Company", style: TextStyle(fontSize: 20,color: Colors.green),),
                        ),
                        color: Colors.white,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 4.0, top: 4.0,right: 4.0),
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
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Container(alignment: Alignment.centerLeft,child: Text("Company Name *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                        ),

                                        SizedBox(height: 4,),
                                        custom_textField_withoutlabel(
                                            company_name_controller,
                                            "Enter Company Name",
                                            "Please Enter Company Name",
                                            Colors.black45 ,
                                            SizeConfig.blockSizeVertical*1.5,
                                            MediaQuery.of(context).size.width/5
                                        ),
                                      ],
                                    ),


                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(alignment: Alignment.centerLeft,child: Text("Select State*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),

                                        SizedBox(height: 5,),
                                        Container(
                                          width: MediaQuery.of(context).size.width/5,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5.0),
                                            border: Border.all(
                                                width: 0.40),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: DropdownButton<String>(

                                              underline: SizedBox(height: 0,),
                                              isExpanded: true,
                                              value: _selected,
                                              hint:  Text('---Select State---',style: TextStyle(fontSize: 15,color: dark),),
                                              items: _values.map((item) {
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

                                      ],
                                    ),

                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(alignment: Alignment.centerLeft,child: Text("Select City *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),

                                        SizedBox(height: 5,),
                                        Container(
                                          width: MediaQuery.of(context).size.width/5,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5.0),
                                            border: Border.all(
                                                width: 0.40),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: DropdownButton<String>(

                                              underline: SizedBox(height: 0,),
                                              isExpanded: true,
                                              value: _selected,
                                              hint:  Text('---Select City---',style: TextStyle(fontSize: 15,color: dark),),
                                              items: _values.map((item) {
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
                                      ],
                                    ),


                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Container(alignment: Alignment.centerLeft,child: Text("Phone No *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                        ),
                                        SizedBox(height: 4,),
                                        custom_textField_withoutlabel(
                                            phone_no_controller,
                                            "Enter Phone No",
                                            "Please Enter Phone No",
                                            Colors.black45 ,
                                            SizeConfig.blockSizeVertical*1.5,
                                            MediaQuery.of(context).size.width/5
                                        ),
                                      ],
                                    ),


                                  ],
                                ),

                                SizedBox(height: 25),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Container(alignment: Alignment.centerLeft,child: Text("Email *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                        ),
                                        SizedBox(height: 4,),
                                        custom_textField_withoutlabel(
                                            mail_controller,
                                            "Enter Email",
                                            "Please Enter Email",
                                            Colors.black45 ,
                                            SizeConfig.blockSizeVertical*1.5,
                                            MediaQuery.of(context).size.width/5

                                        ),
                                      ],
                                    ),


                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Container(alignment: Alignment.centerLeft,child: Text("Company Address *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                        ),
                                        SizedBox(height: 4,),
                                        custom_textField_withoutlabel(
                                            company_add_controller,
                                            "Enter Company Address",
                                            "Please Enter Company Address",
                                            Colors.black45 ,
                                            SizeConfig.blockSizeVertical*1.5,
                                            MediaQuery.of(context).size.width/5
                                        ),
                                      ],
                                    ),

                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(alignment: Alignment.centerLeft,child: Text("Registrar Name *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),

                                        SizedBox(height: 5,),
                                        Container(
                                          width: MediaQuery.of(context).size.width/5,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5.0),
                                            border: Border.all(
                                                width: 0.40),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: DropdownButton<String>(

                                              underline: SizedBox(height: 0,),
                                              isExpanded: true,
                                              value: _selected,
                                              hint:  Text('---Select Registrar---',style: TextStyle(fontSize: 15,color: dark),),
                                              items: _values.map((item) {
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
                                      ],
                                    ),

                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Container(alignment: Alignment.centerLeft,child: Text("Security Code *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                        ),
                                        SizedBox(height: 4,),
                                        custom_textField_withoutlabel(
                                            security_code_controller,
                                            "Enter Security Code",
                                            "Please Enter Security Code",
                                            Colors.black45 ,
                                            SizeConfig.blockSizeVertical*1.5,
                                            MediaQuery.of(context).size.width/5

                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                                SizedBox(height: 25),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Container(alignment: Alignment.centerLeft,child: Text("Isin No *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                        ),
                                        SizedBox(height: 4,),
                                        custom_textField_withoutlabel(
                                            isin_controller,
                                            "Enter Isin No",
                                            "Please Enter Isin No",
                                            Colors.black45 ,
                                            SizeConfig.blockSizeVertical*1.5,
                                            MediaQuery.of(context).size.width/5

                                        ),
                                      ],
                                    ),


                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Container(alignment: Alignment.centerLeft,child: Text("Security ID *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                        ),
                                        SizedBox(height: 4,),
                                        custom_textField_withoutlabel(
                                            security_id_controller,
                                            "Enter Security ID",
                                            "Please Enter Security ID",
                                            Colors.black45 ,
                                            SizeConfig.blockSizeVertical*1.5,
                                            MediaQuery.of(context).size.width/5

                                        ),
                                      ],
                                    ),

                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Container(alignment: Alignment.centerLeft,child: Text("Current Market Price *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                        ),
                                        SizedBox(height: 4,),
                                        custom_textField_withoutlabel(
                                            cmp_controller,
                                            "Enter Current Market Price",
                                            "Please Enter Current Market Price",
                                            Colors.black45 ,
                                            SizeConfig.blockSizeVertical*1.5,
                                            MediaQuery.of(context).size.width/5

                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(right: 40.0, top: 8,bottom: 8),
                                        child: custom_button(Save,"Add Company")
                                    ),

                                  ],)
                              ]
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: getBottomBar(),
    );
  }
  Save(){
    if (_formKey.currentState.validate()) {
      log("message");
    }
  }
}
