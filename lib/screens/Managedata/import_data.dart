import 'dart:developer';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../widgets/appbar_bottombar.dart';
import '../../widgets/button.dart';
import '../../widgets/get_drawer.dart';
import '../../widgets/style/style.dart';

class ImportData extends StatefulWidget {
  const ImportData({Key key}) : super(key: key);

  @override
  State<ImportData> createState() => _ImportDataState();
}

class _ImportDataState extends State<ImportData> {
  var _Values=[
    "Users","Leads","Premium","Test Group"
  ];
  var _selected;
  final _formKey = GlobalKey<FormState>();
  var message_title_controller = TextEditingController();
  var message_controller = TextEditingController();

  void _pickFile() async{
    FilePickerResult result = await FilePicker.platform.pickFiles();
    if (result != null) {

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
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
                      padding: const EdgeInsets.only(right: 4.0,left: 4.0, top: 8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.08,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding:  EdgeInsets.only(left: 8.0),
                          child: Text("Import", style: TextStyle(fontSize: 20,color: Colors.green),),
                        ),
                        color: Colors.white,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 4.0, top: 4.0,right: 4.0,bottom: 1),
                      child: Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.35,
                        child: Column(
                            children:[
                              SizedBox(height: 14,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Container(alignment: Alignment.centerLeft,child: Text("Import investor *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                  ),

                              SizedBox(width: MediaQuery.of(context).size.width*0.09,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width/5,
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
                                    ],
                                  ),

                                  SizedBox(width: 15,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: (){_pickFile();},
                                        child: Container(
                                            alignment: Alignment.centerLeft,
                                            width: MediaQuery.of(context).size.width/5,
                                            height: MediaQuery.of(context).size.height/23,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5.0),
                                              border: Border.all(
                                                width: 0.40,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(3),
                                              child: ElevatedButton(onPressed: () {_pickFile();}, child: Text("Choose file")),
                                            )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                                  Container(child: custom_button(Save,"Import Customer"),),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                                  Container(child: custom_Deletebutton(Delete,"Delete Customer"),)
                                ],
                              ),
                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Container(alignment: Alignment.centerLeft,child: Text("Import Today Market Price *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                  ),

                                  SizedBox(width: MediaQuery.of(context).size.width*0.043,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: (){_pickFile();},
                                        child: Container(
                                            alignment: Alignment.centerLeft,
                                            width: MediaQuery.of(context).size.width/3.5,
                                            height: MediaQuery.of(context).size.height/23,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5.0),
                                              border: Border.all(
                                                width: 0.40,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(3),
                                              child: ElevatedButton(onPressed: () {_pickFile();}, child: Text("Choose file")),
                                            )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                                  Container(child: custom_Newbutton(Save,importMarketPrice,"Import Market Price"),),
                                ],
                              ),

                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Container(alignment: Alignment.centerLeft,child: Text("Import updated Investor *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                  ),

                                  SizedBox(width: MediaQuery.of(context).size.width*0.054,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: (){_pickFile();},
                                        child: Container(
                                            alignment: Alignment.centerLeft,
                                            width: MediaQuery.of(context).size.width/5,
                                            height: MediaQuery.of(context).size.height/23,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5.0),
                                              border: Border.all(
                                                width: 0.40,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(3),
                                              child: ElevatedButton(onPressed: () {_pickFile();}, child: Text("Choose file")),
                                            )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                                  Container(child: custom_Newbutton(Save,importMarketPrice,"Import Customer"),),
                                ],
                              ),


                            ]
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
    );
  }
  Save(){
    if (_formKey.currentState.validate()) {
      log("message");
    }
  }
  Delete(){
    if (_formKey.currentState.validate()) {
      log("message");
    }
  }

}

