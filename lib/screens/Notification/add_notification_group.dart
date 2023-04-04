import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/text_field.dart';

class AddNotificationGroup extends StatefulWidget {
  const AddNotificationGroup({Key key}) : super(key: key);

  @override
  State<AddNotificationGroup> createState() => _AddNotificationGroupState();
}

class _AddNotificationGroupState extends State<AddNotificationGroup> {

  final _formKey = GlobalKey<FormState>();
  var _values=[
    "Users","Leads","Premium","Test Group"
  ];
  var _selected;

  var message_title_controller = TextEditingController();
  var message_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        color: pageBackground,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8.0, top: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.08,
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left: 8.0),
                  child: Text("Send Notification Group", style: TextStyle(fontSize: 20,color: Colors.green),),
                ),
                color: Colors.white,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 8.0, top: 4.0,right: 8.0),
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Column(
                    children:[
                      // const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Container(alignment: Alignment.centerLeft,child: Text("Message Title*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                ),
                              ],
                            ),
                            SizedBox(height: 4,),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: custom_textField_withoutlabel(
                                  message_title_controller,
                                  "Enter Title",
                                  "Please Enter Title",
                                  Colors.black54,
                                  SizeConfig.blockSizeVertical*1.5,
                                  MediaQuery.of(context).size.width/2
                              ),
                            ),


                            SizedBox(width: 10,height: 15,),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Container(alignment: Alignment.centerLeft,child: Text("Message*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                ),
                              ],
                            ),
                            SizedBox(height: 4,),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: custom_largetextField_withlabel(
                                message_controller,
                                "Enter Message...",
                                "Please Enter Message",
                                Colors.black54,
                                SizeConfig.blockSizeVertical*1.5,
                                MediaQuery.of(context).size.width/2,
                              ),),


                            SizedBox(height: 14),
                            Container(alignment: Alignment.centerLeft,child: Text("Select Customer Groups*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

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
                                      hint: Text('Select Groups',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
                            SizedBox(height: 14),
                            Container(alignment: Alignment.centerLeft,child: Text("Select Screen to Open *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

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
                                      hint: Text('Select Screens',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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

                          ],
                        ),
                      ),
                      Container(alignment: Alignment.centerLeft,child: custom_button(Save,"Send Notification"),)
                    ]
                ),
              ),
            ),

          ],
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