import 'dart:developer';
import 'package:flutter/material.dart';

import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/text_field.dart';
import '../widgets/style/style.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  var old_password_controller = TextEditingController();
  var New_password_controller = TextEditingController();
  var confirm_password_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Container(
          color: pageBackground,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0, top: 4.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.3,
                    height: MediaQuery.of(context).size.height*0.08,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 8.0),
                      child: Text("Change Password", style: TextStyle(fontSize: 20,color: Colors.green),),
                    ),
                    color: Colors.white,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 4.0,right: 4.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.30,
                    height: MediaQuery.of(context).size.height*0.14,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, top: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            SizedBox(height: 15),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Container(child: Text("Old Password *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                                SizedBox(height: 4,),
                                custom_textField_withoutlabel(
                                    old_password_controller,
                                    "Enter Old Password *",
                                    "Please Enter Old Password",
                                    Colors.black45 ,
                                    SizeConfig.blockSizeVertical*1.5,
                                    MediaQuery.of(context).size.width/5

                                ),
                              ],
                            ),


                            SizedBox(height: 15,width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(child: Text("New Password *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                                SizedBox(height: 4,),
                                custom_textField_withoutlabel(
                                    New_password_controller,
                                    "Enter New Password *",
                                    "Please Enter New Password",
                                    Colors.black45 ,
                                    SizeConfig.blockSizeVertical*1.5,
                                    MediaQuery.of(context).size.width/5

                                ),
                              ],
                            ),


                            SizedBox(height: 15,width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(child: Text("Confirm Password *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                                SizedBox(height: 4,),
                                custom_textField_withoutlabel(
                                    confirm_password_controller,
                                    "Enter Confirm Password*",
                                    "Please Enter Confirm Password",
                                    Colors.black45 ,
                                    SizeConfig.blockSizeVertical*1.5,
                                    MediaQuery.of(context).size.width/5

                                ),
                              ],
                            ),
                            SizedBox(width: 25,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    child: custom_button(Save,"Change Password")),
                              ],
                            ),
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
  Save(){
    if (_formKey.currentState.validate()) {
      log("message");
    }
  }
}