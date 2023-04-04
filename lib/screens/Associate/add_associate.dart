import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/dropdown/gf_multiselect.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';

import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/text_field.dart';

class Add_Associate extends StatefulWidget {
  String dropdown;
   Add_Associate({Key key, this.dropdown}) : super(key: key);

  @override
  State<Add_Associate> createState() => _Add_AssociateState();
}

class _Add_AssociateState extends State<Add_Associate> {
  final _formKey = GlobalKey<FormState>();
  List<String> _values = ['State 1','State 2','State 3','State 4','State 5','State 6','State 7','State 8','State 9','State 10'];
  List<String> _Employ_type = ['Business Patner','Backoffice','Liasoning','Accountant','Channel Patner','Vendor','Video','Research'];
  List<String> State_list = ['State 1','State 2','State 3','State 4','State 5','State 6','State 7','State 8','State 9','State 10'];
  bool  business_pat_cont = false;bool value = false;bool value2 = false;bool value3 = false;
  var selectrdeState ;  var selectrdeCity ;  var selectEmploye_type ;  var _selected ;
  var Name_controller = TextEditingController();  var state_controller = TextEditingController();
  var contect_controller = TextEditingController();   var father_name_controller = TextEditingController();
  var city_controller = TextEditingController();   var address_controller = TextEditingController();
  var pincode_controller = TextEditingController();   var employtipe_controller = TextEditingController();
  var profasion_controller = TextEditingController();
  var user_Name_controller = TextEditingController(); var password_controller = TextEditingController();
  var confrmpass_controller = TextEditingController(); var mail_controller = TextEditingController();
  var company_add_controller = TextEditingController(); var regastrar_name_controller = TextEditingController();
  var security_code_controller = TextEditingController(); var isin_controller = TextEditingController();
  var security_id_controller = TextEditingController();  var cmp_controller = TextEditingController();
  var Agreement_controller = TextEditingController(); var Client_Service_controller = TextEditingController();
  var Client_Acquisition_controller = TextEditingController(); var Self_controller = TextEditingController();
  var Firm_Name_controller = TextEditingController(); var User_name_controller = TextEditingController();
  var isChecked = false;
  var isChecked_2 = false;
  var isChecked_3 = false;var Backoffice = false;var Liasoning = false;
  var Accountant = false;
  var Channel_Partner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                    height: MediaQuery.of(context).size.height*0.08,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerLeft,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 8.0),
                      child: Text("Add Associate", style: TextStyle(fontSize: 24,color: Colors.green),),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0,bottom: 3.0, top: 8.0,right: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                    width: MediaQuery.of(context).size.width*1,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children:<Widget>[
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListView(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  children: [
                                    Container(
                                      child: custom_textField_withlabel3(
                                          Name_controller,
                                          "Enter  Name",
                                          "Enter Name *",
                                          "Please Enter Name",
                                          Colors.green,
                                          SizeConfig.blockSizeVertical*1.5,
                                          MediaQuery.of(context).size.width*0.50
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                    Container(
                                      child: custom_textField_withlabel3(
                                          father_name_controller,
                                          "Enter Father/Husband Name",
                                          "Enter Father/Husband Name ",
                                          "Please Enter Father/Husband Name ",
                                          Colors.green,
                                          SizeConfig.blockSizeVertical*1.5,
                                          MediaQuery.of(context).size.width*0.50
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                    Container(
                                      child: custom_textField_withlabel3(
                                          mail_controller,
                                          "Enter Email Id",
                                          "Enter Email Id *",
                                          "Please Enter Email Id",
                                          Colors.green,
                                          SizeConfig.blockSizeVertical*1.5,
                                          MediaQuery.of(context).size.width*0.50
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                    Container(
                                      child: custom_textField_withlabel3(
                                          contect_controller,
                                          "Enter Contact Number",
                                          "Enter Contact Number",
                                          "Please Enter Contact Number",
                                          Colors.green,
                                          SizeConfig.blockSizeVertical*1.5,
                                          MediaQuery.of(context).size.width*0.50
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                    Container(
                                      height: MediaQuery.of(context).size.height*0.050,
                                      child:Container(
                                        child: DropdownButtonFormField(
                                          items: _values.map((String selectrdeState) {
                                            return new DropdownMenuItem(
                                                value: selectrdeState,
                                                child: Text(selectrdeState)
                                            );
                                          }).toList(),
                                          onChanged: (newValue) {
                                            // do other stuff with _category
                                            setState(() => selectrdeState = newValue);
                                          },
                                          value: selectrdeState,
                                          style: TextStyle(fontSize: 12,),
                                          alignment: Alignment.centerLeft,
                                          decoration: InputDecoration(
                                            isDense: true,
                                              label:  Text("Select State"),
                                              hintText: "Select State",
                                              border: OutlineInputBorder(),
                                        ),

                                        // DropdownButtonHideUnderline(
                                        //   child: DropdownButton2(
                                        //     hint: Text('Select State',style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
                                        //     value: selectrdeState,
                                        //     onChanged: (newValue) {
                                        //       setState(() {
                                        //         selectrdeState = newValue;
                                        //       });
                                        //     },
                                        //     items: _values.map((item) {
                                        //       return DropdownMenuItem(
                                        //         child: new Text(item),
                                        //         value: item,
                                        //       );
                                        //     }).toList(),
                                        //   ),),
                                    ),
                                      ),),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.50,
                                      height: MediaQuery.of(context).size.height*0.049,
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
                                          hint: Text('Select City',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                    Container(
                                      child: custom_textField_withlabel3(
                                          mail_controller,
                                          "Enter Email Id",
                                          "Enter Email Id *",
                                          "Please Enter Email Id",
                                          Colors.green,
                                          SizeConfig.blockSizeVertical*1.5,
                                          MediaQuery.of(context).size.width*0.19
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                    //Plans
                                    Container(
                                      width: MediaQuery.of(context).size.width*1,
                                      child: Column(
                                        children: <Widget> [
                                          Container(
                                            alignment: Alignment.topLeft,
                                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 2),
                                            child: Text("Revenue Sharing *"),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(border: Border.symmetric(vertical: BorderSide.none,horizontal: BorderSide(color: Colors.grey.shade600))),
                                            child: Column(
                                              children: [
                                                Container(
                                                  alignment: Alignment.center,
                                                  height: MediaQuery.of(context).size.height*0.05,
                                                  decoration: BoxDecoration(border: Border.symmetric(vertical: BorderSide(color: Colors.grey.shade600),horizontal: BorderSide.none)),
                                                  child: Text("Plan",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey.shade700,letterSpacing: 0.5),),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(border: Border.symmetric(vertical: BorderSide.none,horizontal: BorderSide(color: Colors.grey.shade600))),
                                                  child: Container(
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration: BoxDecoration(border: Border.symmetric(vertical: BorderSide(color: Colors.grey.shade600),horizontal: BorderSide.none)),
                                                            child: Column(
                                                              children: [
                                                                Container(
                                                                  decoration: BoxDecoration(border: Border.symmetric(vertical: BorderSide.none,horizontal: BorderSide(color: Colors.grey.shade600))),
                                                                  child: Row(
                                                                    children: <Widget>[
                                                                      Transform.scale(
                                                                        scale: 0.8,
                                                                        child:  Checkbox(
                                                                            activeColor: Colors.green,
                                                                            checkColor: Colors.white,
                                                                            value: isChecked,
                                                                            onChanged: (bool value) {
                                                                              setState(() {
                                                                                isChecked =value;
                                                                              });
                                                                            }
                                                                        ),),
                                                                      Text("Client Service",
                                                                        style: TextStyle(fontSize: 13.0),
                                                                      ),//Checkbox
                                                                    ], //<Widget>[]
                                                                  ),
                                                                ),
                                                                Container(
                                                                  padding:EdgeInsets.all(8),
                                                                  child: custom_textField_withlabel3(
                                                                      Client_Service_controller,
                                                                      "Enter Percentage",
                                                                      "Enter Percentage *",
                                                                      "Please Enter Percentage",
                                                                      Colors.green,
                                                                      SizeConfig.blockSizeVertical*1.5,
                                                                      MediaQuery.of(context).size.width*0.25
                                                                  ),

                                                                )
                                                              ],
                                                            ),),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            child: Column(
                                                              children: [
                                                                Container(
                                                                  decoration: BoxDecoration(border: Border.symmetric(vertical: BorderSide.none,horizontal: BorderSide(color: Colors.grey.shade600))),
                                                                  child: Row(
                                                                    children: <Widget>[
                                                                      Transform.scale(
                                                                        scale: 0.8,
                                                                        child:  Checkbox(
                                                                            activeColor: Colors.green,
                                                                            checkColor: Colors.white,
                                                                            value: isChecked_2,
                                                                            onChanged: (bool value) {
                                                                              setState(() {
                                                                                isChecked_2 =value;
                                                                              });
                                                                            }
                                                                        ),),
                                                                      Text("Client Acquisition",
                                                                        style: TextStyle(fontSize: 13.0),
                                                                      ),//Checkbox
                                                                    ], //<Widget>[]
                                                                  ),
                                                                ),
                                                                Container(
                                                                  padding:EdgeInsets.all(8),
                                                                  //decoration: BoxDecoration(border: Border.symmetric(vertical: BorderSide.none,horizontal: BorderSide())),
                                                                  child: custom_textField_withlabel3(
                                                                      Client_Acquisition_controller,
                                                                      "Enter Percentage",
                                                                      "Enter Percentage*",
                                                                      "Please Enter Percentage",
                                                                      Colors.green,
                                                                      SizeConfig.blockSizeVertical*1.5,
                                                                      MediaQuery.of(context).size.width*0.25
                                                                  ),
                                                                )
                                                              ],
                                                            ),),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration: BoxDecoration(border: Border.symmetric(vertical: BorderSide(color: Colors.grey.shade600),horizontal: BorderSide.none)),
                                                            child: Column(
                                                              children: [
                                                                Container(
                                                                  decoration: BoxDecoration(border: Border.symmetric(vertical: BorderSide.none,horizontal: BorderSide(color: Colors.grey.shade600))),
                                                                  child: Row(
                                                                    children: <Widget>[
                                                                      Transform.scale(
                                                                        scale: 0.8,
                                                                        child:  Checkbox(
                                                                            activeColor: Colors.green,
                                                                            checkColor: Colors.white,
                                                                            value: isChecked_3,
                                                                            onChanged: (bool value) {
                                                                              setState(() {
                                                                                isChecked_3 =value;
                                                                              });
                                                                            }
                                                                        ),),
                                                                      Text("Self Funding",
                                                                        style: TextStyle(fontSize: 13.0),
                                                                      ),//Checkbox
                                                                    ], //<Widget>[]
                                                                  ),
                                                                ),
                                                                Container(
                                                                  padding:EdgeInsets.all(8),
                                                                  //decoration: BoxDecoration(border: Border.symmetric(vertical: BorderSide.none,horizontal: BorderSide())),
                                                                  child: custom_textField_withlabel3(
                                                                      Self_controller,
                                                                      "Enter Percentage",
                                                                      "Enter Percentage*",
                                                                      "Please Enter Percentage",
                                                                      Colors.green,
                                                                      SizeConfig.blockSizeVertical*1.5,
                                                                      MediaQuery.of(context).size.width*0.25
                                                                  ),
                                                                )
                                                              ],
                                                            ),),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                    Container(
                                      child: GFMultiSelect(
                                        items: _Employ_type,
                                        onSelect: (value) {
                                          print('selected $value ');
                                        },
                                        dropdownTitleTileText: "Select Product",
                                        dropdownTitleTileMargin: EdgeInsets.symmetric(vertical: 5,horizontal: 1),
                                        dropdownTitleTilePadding: EdgeInsets.all(4),
                                        dropdownUnderlineBorder: BorderSide.none,
                                        dropdownTitleTileBorder:Border.all(color: Colors.black87, width: 1),
                                        dropdownTitleTileBorderRadius: BorderRadius.circular(3),
                                        expandedIcon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.black54,
                                        ),
                                        collapsedIcon: const Icon(
                                          Icons.keyboard_arrow_up,
                                          color: Colors.black54,
                                        ),
                                        submitButton: Text('OK'),
                                        dropdownTitleTileTextStyle: const TextStyle(
                                            fontSize: 12, color: Colors.black54),
                                        padding: const EdgeInsets.all(4),
                                        margin: const EdgeInsets.all(4),
                                        type: GFCheckboxType.basic,
                                        activeBgColor: Colors.green.withOpacity(0.5),
                                        inactiveBorderColor: Colors.grey.shade200,
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                    Container(
                                      child: GFMultiSelect(
                                        items: _Employ_type,
                                        onSelect: (value) {
                                          print('selected $value ');
                                        },
                                        dropdownTitleTileText: Text("Select Roll",style: TextStyle(fontSize: 12),).toString(),
                                        dropdownTitleTileMargin: EdgeInsets.symmetric(vertical: 5,horizontal: 1),
                                        dropdownTitleTilePadding: EdgeInsets.all(4),
                                        dropdownUnderlineBorder: BorderSide.none,
                                        dropdownTitleTileBorder:Border.all(color: Colors.black87, width: 1),
                                        dropdownTitleTileBorderRadius: BorderRadius.circular(3),
                                        expandedIcon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.black54,
                                        ),
                                        collapsedIcon: const Icon(
                                          Icons.keyboard_arrow_up,
                                          color: Colors.black54,
                                        ),
                                        submitButton: Text('OK'),
                                        dropdownTitleTileTextStyle: const TextStyle(
                                            fontSize: 12, color: Colors.black54),
                                        padding: const EdgeInsets.all(4),
                                        margin: const EdgeInsets.all(4),
                                        type: GFCheckboxType.basic,
                                        activeBgColor: Colors.green.withOpacity(0.1),
                                        inactiveBorderColor: Colors.grey.shade200,
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.19,
                                      height: MediaQuery.of(context).size.height*0.049,
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
                                          hint: Text('Select City',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                    Container(
                                      child: custom_textField_withlabel3(
                                          Firm_Name_controller,
                                          "Enter Firm Name",
                                          "Enter Firm Name *",
                                          "Please Enter Firm Name",
                                          Colors.green,
                                          SizeConfig.blockSizeVertical*1.5,
                                          MediaQuery.of(context).size.width*0.19
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                    Container(
                                      child: custom_textField_withlabel3(
                                          user_Name_controller,
                                          "Enter User Name",
                                          "Enter User Name",
                                          "Please Enter User Name",
                                          Colors.green,
                                          SizeConfig.blockSizeVertical*1.5,
                                          MediaQuery.of(context).size.width*0.50
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                    Container(
                                      child: custom_textField_withlabel3(
                                          password_controller,
                                          "Enter Password",
                                          "Enter Password",
                                          "Please Enter Password",
                                          Colors.green,
                                          SizeConfig.blockSizeVertical*1.5,
                                          MediaQuery.of(context).size.width*0.50
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                    Container(
                                      child: custom_textField_withlabel3(
                                          confrmpass_controller,
                                          "Enter Conform Password",
                                          "Enter Conform Password",
                                          "Please Enter Conform Password",
                                          Colors.green,
                                          SizeConfig.blockSizeVertical*1.5,
                                          MediaQuery.of(context).size.width*0.50
                                      ),
                                    ),

                                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      child: custom_button(save_, "Add"),
                                    )
                                  ],
                                ),
                              ),
                            )
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
    );
  }
  save_(){
    if (_formKey.currentState.validate()) {
      log("message");
    }
  }
  ontap(){

  }
}
