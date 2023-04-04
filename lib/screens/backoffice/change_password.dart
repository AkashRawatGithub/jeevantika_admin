import 'package:jeevantika_Web/widgets/style/style.dart';
import 'dart:developer';
import 'package:flutter/material.dart';

import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/text_field.dart';

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
                    child: Text("Change Password", style: TextStyle(fontSize: 20,color: Colors.green),),
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
                                child: Container(alignment: Alignment.centerLeft,child: Text("Old Password *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                              ),
                            ],
                          ),
                          SizedBox(height: 4,),
                          custom_textField_withoutlabel(
                              old_password_controller,
                              "Enter Old Password *",
                              "Please Enter Old Password",
                              Colors.black45 ,
                              SizeConfig.blockSizeVertical*1.5,
                              MediaQuery.of(context).size.width/2

                          ),

                          SizedBox(height: 15),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Container(alignment: Alignment.centerLeft,child: Text("New Password *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                              ),
                            ],
                          ),
                          SizedBox(height: 4,),
                          custom_textField_withoutlabel(
                              New_password_controller,
                              "Enter New Password *",
                              "Please Enter New Password",
                              Colors.black45 ,
                              SizeConfig.blockSizeVertical*1.5,
                              MediaQuery.of(context).size.width/2

                          ),

                          SizedBox(height: 15),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Container(alignment: Alignment.centerLeft,child: Text("Confirm Password *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                              ),
                            ],
                          ),
                          SizedBox(height: 4,),
                          custom_textField_withoutlabel(
                              confirm_password_controller,
                              "Enter Confirm Password*",
                              "Please Enter Confirm Password",
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
                    child: custom_button(Save,"Change Password")),
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