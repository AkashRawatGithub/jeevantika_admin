
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';
import 'Add_registrar_text_editor/Kyc_Text_editor.dart';

class Add_Registrar extends StatefulWidget {
  const Add_Registrar({Key key}) : super(key: key);

  @override
  State<Add_Registrar> createState() => _Add_RegistrarState();
}

class _Add_RegistrarState extends State<Add_Registrar> {
  final _formKey = GlobalKey<FormState>();
  List<String> State_list = [' 1',' 2',' 3',' 4',' 5',' 6',' 7',' 8',' 9',' 10','11','12','13','14','15','16','17','18','19','20'];
  String selectrdeState ;
  var Name_controller = TextEditingController();
  var state_controller = TextEditingController();
  var contect_controller = TextEditingController();
  var father_name_controller = TextEditingController();
  var city_controller = TextEditingController();
  var address_controller = TextEditingController();
  var pincode_controller = TextEditingController();
  var mail_controller = TextEditingController();
  List<String> _State = [' 1',' 2',' 3',' 4',' 5',' 6',' 7',' 8',' 9',' 10','11','12','13','14','15','16','17','18','19','20'];
  List<String> _City = [' 1',' 2',' 3',' 4',' 5',' 6',' 7',' 8',' 9',' 10'];
  var _selected_State;
  var _selected_City;
  bool visbl = false;
  bool eat = false;
  @override
  void initState() {
    super.initState();
  }
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Container(color: pageBackground,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                    height: MediaQuery.of(context).size.height*0.08,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerLeft,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 8.0),
                      child: Text("Add Registrar", style: TextStyle(fontSize: 24,color: Colors.green),),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0,bottom: 20, top: 8.0,right: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: ListView(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  Container(
                                    child: Text("Add Registrar",style: TextStyle(color: Colors.black,fontSize: SizeConfig.blockSizeVertical*1.5),),
                                  ),
                                  Divider(),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                  Container(
                                    child: custom_textField_withlabel3(
                                        Name_controller,
                                        "Enter Registrar Name",
                                        "Enter Registrar Name *",
                                        "Please Enter Registrar Name",
                                        Colors.grey,
                                        13,
                                        MediaQuery.of(context).size.width*0.19
                                    ),
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                  Container(
                                    child: custom_textField_withlabel3(
                                        address_controller,
                                        "Enter Registrar Address",
                                        "Enter Registrar Address ",
                                        "Please Enter Registrar Address ",
                                        Colors.grey,
                                        13,
                                        MediaQuery.of(context).size.width*0.19
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
                                        value: _selected_State,
                                        hint: Text('Select Business Partner',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                                        items: _State.map((item) {
                                          return DropdownMenuItem(
                                            child: new Text(item),
                                            value: item,
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            _selected_State = value;
                                          });
                                        },
                                      ),
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
                                        value: _selected_City,
                                        hint: Text('Select City',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                                        items: _City.map((item) {
                                          return DropdownMenuItem(
                                            child: new Text(item),
                                            value: item,
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            _selected_City = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                  Container(
                                    child: custom_textField_withlabel3(
                                        contect_controller,
                                        "Enter Phone Number",
                                        "Enter Phone Number",
                                        "Please Enter Phone Number",
                                        Colors.grey,
                                        13,
                                        MediaQuery.of(context).size.width*0.19
                                    ),
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                  Container(
                                    child: custom_textField_withlabel3(
                                        city_controller,
                                        "Enter Registrar Email Id",
                                        "Enter Registrar Email Id *",
                                        "Please Enter Registrar Email Id",
                                        Colors.grey,
                                        10,
                                        MediaQuery.of(context).size.width*0.19
                                    ),
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.01),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: custom_button(save_reg, "SAVE"),
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                  Visibility(
                                    visible: visbl ? true:false,
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text("Create Formate *"),
                                          ),
                                          Divider(),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.01),
                                          Container(
                                            child: ListView.builder(
                                                scrollDirection: Axis.vertical,
                                                shrinkWrap: true,
                                                itemCount: 1,
                                                itemBuilder: (itemBuilder,index){
                                                  return InkWell(
                                                    onTap:() async {
                                                      setState(() {
                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => KycUpdate()));
                                                      });
                                                    },
                                                    child: Container(height: MediaQuery.of(context).size.height*0.057,
                                                      child: Card(
                                                        shadowColor: CupertinoColors.opaqueSeparator,color: Colors.grey.shade100,
                                                        child: Padding(padding: EdgeInsets.symmetric(vertical: 5,),
                                                          child: Row(children: [
                                                            Expanded(flex: 3,
                                                              child: Padding(padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                                                child: Text(" KYC Update" ,style: TextStyle(fontSize:SizeConfig.blockSizeHorizontal*1.1,fontWeight: FontWeight.w700),textAlign: TextAlign.left),
                                                              ),
                                                            ),
                                                            Expanded(child: Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_forward,)),)
                                                          ],),
                                                        ),
                                                      ),
                                                    ),
                                                  );}
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                          Container(
                                            child: ListView.builder(
                                                scrollDirection: Axis.vertical,
                                                shrinkWrap: true,
                                                itemCount: 1,
                                                itemBuilder: (itemBuilder,index){
                                                  return InkWell(
                                                    onTap:() async {
                                                      setState(() {
                                                        // is_expanded_2 = !is_expanded_2;
                                                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Signature_Verification()));
                                                      });
                                                    },
                                                    child: Container(height: MediaQuery.of(context).size.height*0.057,
                                                      child: Card(
                                                        shadowColor: CupertinoColors.opaqueSeparator,color: Colors.grey.shade100,
                                                        child: Padding(padding: EdgeInsets.symmetric(vertical: 5,),
                                                          child: Row(children: [
                                                            Expanded(flex: 3,
                                                              child: Padding(padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                                                child: Text("Signature Verification Form" ,style: TextStyle(fontSize:SizeConfig.blockSizeVertical*1.5,fontWeight: FontWeight.w700),textAlign: TextAlign.left),
                                                              ),
                                                            ),
                                                            Expanded(child: Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_forward,)),)
                                                          ],),
                                                        ),
                                                      ),
                                                    ),
                                                  );}
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                          Container(
                                            child: ListView.builder(
                                                scrollDirection: Axis.vertical,
                                                shrinkWrap: true,
                                                itemCount: 1,
                                                itemBuilder: (itemBuilder,index){
                                                  return InkWell(
                                                    onTap:() async {
                                                      setState(() {
                                                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Name_Correction()));
                                                        // is_expanded_3 = !is_expanded_3;
                                                      });

                                                    },
                                                    child: Container(height: MediaQuery.of(context).size.height*0.057,
                                                      child: Card(
                                                        shadowColor: CupertinoColors.opaqueSeparator,color: Colors.grey.shade100,
                                                        child: Padding(padding: EdgeInsets.symmetric(vertical: 5,),
                                                          child: Row(children: [
                                                            Expanded(flex: 3,
                                                              child: Padding(padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                                                child: Text("Name Correction" ,style: TextStyle(fontSize:SizeConfig.blockSizeVertical*1.5,fontWeight: FontWeight.w700),textAlign: TextAlign.left),
                                                              ),
                                                            ),
                                                            Expanded(child: Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_forward,)),)
                                                          ],),
                                                        ),
                                                      ),
                                                    ),
                                                  );}
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                          Container(
                                            child: ListView.builder(
                                                scrollDirection: Axis.vertical,
                                                shrinkWrap: true,
                                                itemCount: 1,
                                                itemBuilder: (itemBuilder,index){
                                                  return InkWell(
                                                    onTap:() async {
                                                      setState(() {
                                                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Duplicate_Issue()));
                                                        // is_expanded_4 = !is_expanded_4;
                                                      });
                                                    },
                                                    child: Container(height: MediaQuery.of(context).size.height*0.057,
                                                      child: Card(
                                                        shadowColor: CupertinoColors.opaqueSeparator,color: Colors.grey.shade100,
                                                        child: Padding(padding: EdgeInsets.symmetric(vertical: 5,),
                                                          child: Row(children: [
                                                            Expanded(flex: 3,
                                                              child: Padding(padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                                                child: Text("Duplicate Issue of Shares" ,style: TextStyle(fontSize:SizeConfig.blockSizeVertical*1.5,fontWeight: FontWeight.w700),textAlign: TextAlign.left),
                                                              ),
                                                            ),
                                                            Expanded(child: Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_forward,)),)
                                                          ],),
                                                        ),
                                                      ),
                                                    ),
                                                  );}
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                          Container(
                                            child: ListView.builder(
                                                scrollDirection: Axis.vertical,
                                                shrinkWrap: true,
                                                itemCount: 1,
                                                itemBuilder: (itemBuilder,index){
                                                  return InkWell(
                                                    onTap:() async {
                                                      setState(() {
                                                        // is_expanded_5 = !is_expanded_5;
                                                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Trass_Value_below()));
                                                      });
                                                    },
                                                    child: Container(height: MediaQuery.of(context).size.height*0.057,
                                                      child: Card(
                                                        shadowColor: CupertinoColors.opaqueSeparator,color: Colors.grey.shade100,
                                                        child: Padding(padding: EdgeInsets.symmetric(vertical: 5,),
                                                          child: Row(children: [
                                                            Expanded(flex: 3,
                                                              child: Padding(padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                                                child: Text("Transmission of shares of value below Rs. 2 lakh" ,style: TextStyle(fontSize:SizeConfig.blockSizeVertical*1.5,fontWeight: FontWeight.w700),textAlign: TextAlign.left),
                                                              ),
                                                            ),
                                                            Expanded(child: Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_forward,)),)
                                                          ],),
                                                        ),
                                                      ),
                                                    ),
                                                  );}
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                          Container(
                                            child: ListView.builder(
                                                scrollDirection: Axis.vertical,
                                                shrinkWrap: true,
                                                itemCount: 1,
                                                itemBuilder: (itemBuilder,index){
                                                  return InkWell(
                                                    onTap:() async {
                                                      setState(() {
                                                        // is_expanded_6 = !is_expanded_6;
                                                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Trass_Value_above()));
                                                      });
                                                    },
                                                    child: Container(height: MediaQuery.of(context).size.height*0.057,
                                                      child: Card(
                                                        shadowColor: CupertinoColors.opaqueSeparator,color: Colors.grey.shade100,
                                                        child: Padding(padding: EdgeInsets.symmetric(vertical: 5,),
                                                          child: Row(children: [
                                                            Expanded(flex: 3,
                                                              child: Padding(padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                                                child: Text("Transmission of shares of value above Rs. 2 lakh" ,style: TextStyle(fontSize:SizeConfig.blockSizeVertical*1.5,fontWeight: FontWeight.w700),textAlign: TextAlign.left),
                                                              ),
                                                            ),
                                                            Expanded(child: Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_forward,)),)
                                                          ],),
                                                        ),
                                                      ),
                                                    ),
                                                  );}
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                          Container(
                                            child: ListView.builder(
                                                scrollDirection: Axis.vertical,
                                                shrinkWrap: true,
                                                itemCount: 1,
                                                itemBuilder: (itemBuilder,index){
                                                  return InkWell(
                                                    onTap:() async {
                                                      setState(() {
                                                        // is_expanded_7 = !is_expanded_7;
                                                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Duplicate_Cum()));
                                                      });
                                                    },
                                                    child: Container(height: MediaQuery.of(context).size.height*0.057,
                                                      child: Card(
                                                        shadowColor: CupertinoColors.opaqueSeparator,color: Colors.grey.shade100,
                                                        child: Padding(padding: EdgeInsets.symmetric(vertical: 5,),
                                                          child: Row(children: [
                                                            Expanded(flex: 3,
                                                              child: Padding(padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                                                child: Text("Duplicate Cum Transmission" ,style: TextStyle(fontSize:SizeConfig.blockSizeVertical*1.5,fontWeight: FontWeight.w700),textAlign: TextAlign.left),
                                                              ),
                                                            ),
                                                            Expanded(child: Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_forward,)),)
                                                          ],),
                                                        ),
                                                      ),
                                                    ),
                                                  );}
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                          Container(
                                            child: ListView.builder(
                                                scrollDirection: Axis.vertical,
                                                shrinkWrap: true,
                                                itemCount: 1,
                                                itemBuilder: (itemBuilder,index){
                                                  return InkWell(
                                                    onTap:() async {
                                                      setState(() {
                                                        // is_expanded_8 = !is_expanded_8;
                                                        // Navigator.push(context, MaterialPageRoute(builder: (context) => IEPF()));
                                                      });
                                                    },
                                                    child: Container(height: MediaQuery.of(context).size.height*0.057,
                                                      child: Card(
                                                        shadowColor: CupertinoColors.opaqueSeparator,color: Colors.grey.shade100,
                                                        child: Padding(padding: EdgeInsets.symmetric(vertical: 5,),
                                                          child: Row(children: [
                                                            Expanded(flex: 3,
                                                              child: Padding(padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                                                child: Text("IEPF" ,style: TextStyle(fontSize:SizeConfig.blockSizeVertical*1.5,fontWeight: FontWeight.w700),textAlign: TextAlign.left),
                                                              ),
                                                            ),
                                                            Expanded(child: Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_forward,)),)
                                                          ],),
                                                        ),
                                                      ),
                                                    ),
                                                  );}
                                            ),
                                          ),
                                        ],),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ]
                      ),
                    ),
                  ),
                ),
              ],)
            ),
          ),
        ),
      ),
    );
  }
  add(){}
  save_reg(){
    setState(() {
      visbl = !visbl;
    });
  }
}
