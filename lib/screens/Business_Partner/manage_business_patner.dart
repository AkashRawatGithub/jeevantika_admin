
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';


import '../../widgets/button.dart';
import '../../widgets/card_widget.dart';
import '../../widgets/text_field.dart';

class Manage_Business_patner extends StatefulWidget {
  const Manage_Business_patner({Key key}) : super(key: key);

  @override
  State<Manage_Business_patner> createState() => _Manage_Business_patnerState();
}

class _Manage_Business_patnerState extends State<Manage_Business_patner> {
  var name_controller = TextEditingController();
  var email_controller = TextEditingController();
  var address_controller = TextEditingController();
  var contect_controller = TextEditingController();
  var grp_values=[
    "Users","Leads","Premium","Test Group"
  ];List<bool> is_expanded = [];
  List Lst_ty = ["Users","Leads","Premium","Leads","Premium","Leads","Premium","Test Group"];
  List<String> _Values = ['a','b','ds','2','4','5','6'];
  bool block = false ;
  List business_partner_name = [
    {"name": "asd","contact":"8502009146"},
    {"name": "holder ?*","contact":"8502009140"},
    {"name": "recent past ?*","contact":"8502009142"},
    {"name":"Certificate ?*","contact":"8502009144"},
    {"name":"Death Certificate ?*","contact":"8502009143"},
    {"name":"share certificate(s) ?*","contact":"8502009141"},
    {"name": "share","contact":"8502009146"},
    {"name": "certificate(s) ?*","contact":"8502009148"},
    {"name": "share certificate","contact":"8502009144"},
    {"name":"company","contact":"8502009145"}
  ];
  var _selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageBackground,
      child:Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text("Manage Business Partner ",style: TextStyle(fontSize: 22,color: Colors.green.shade600),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                        //form create list search
                      Container(
                          child: Row(
                            children: [
                              SizedBox(height: 10,width: 10,),
                              Container(child: custom_textField_withlabel4(
                                  name_controller,
                                  "Enter Name",
                                  "Name",
                                  Colors.black54,
                                  13,
                                  MediaQuery.of(context).size.width/7.3
                              ),),
                              SizedBox(height: 10,width: 10,),

                              Container(
                                width: MediaQuery.of(context).size.width*0.15,
                                height: 25,
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
                              Container(child: custom_textField_withlabel4(
                                  address_controller,
                                  "Enter Address",
                                  "Address",
                                  Colors.black54,
                                  13,
                                  MediaQuery.of(context).size.width/6.9
                              ),),
                              SizedBox(height: 10,width: 10,),
                              Container(child: custom_textField_withlabel4(
                                  email_controller,
                                  "Enter Email",
                                  "Email",
                                  Colors.black54,
                                  13,
                                  MediaQuery.of(context).size.width/8.1
                              ),),
                              SizedBox(height: 10,width: 10,),
                              Container(child: custom_textField_withlabel4(
                                  contect_controller,
                                  "Enter Phone No.",
                                  "Phone No.",
                                  Colors.black54,
                                  13,
                                  MediaQuery.of(context).size.width/8.9
                              ),),
                              SizedBox(width: 5,),
                              Container(
                                child: custom_regisbutton(Save,"Search"),
                              )
                            ],
                          ),
                        ),
                      Divider(),
                      //  Page List
                        Card_ListPage(context,business_partner_name),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
  Save() {
  }
}
