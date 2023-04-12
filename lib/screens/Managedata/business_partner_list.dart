import 'package:flutter/material.dart';

import '../../utils/screen_size.dart';
import '../../widgets/appbar_bottombar.dart';
import '../../widgets/button.dart';
import '../../widgets/get_drawer.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';

class BusinessPartnerList extends StatefulWidget {
  const BusinessPartnerList({Key key}) : super(key: key);

  @override
  State<BusinessPartnerList> createState() => _BusinessPartnerListState();
}

var _selected;
var investor_Controller = TextEditingController();
var shares_value_controller = TextEditingController();
List<String> _Values = ['a','b','ds','2','4','5','6'];
var sendCompany_=false;
var sublist_ = false;
var receiveCompany_=false;
var backCompany_=false;
final _formKey = GlobalKey<FormState>();
var visibleTable_= false;
var invisibleTable_= false;
class _BusinessPartnerListState extends State<BusinessPartnerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getDrawer(context),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: pageBackground,
                child: sendCompany_==true?SendCompany():receiveCompany_==true?ReceiveCompany():Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Business Partner List",
                          style: TextStyle(fontSize: 20, color: Colors.green),
                        ),
                      ),
                      color: Colors.white,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Table(
                              columnWidths: {
                                2: FlexColumnWidth(4),
                                3: FlexColumnWidth(4),
                                11:FlexColumnWidth(3)
                              },
                              border: TableBorder.all(color: Colors.black),
                              children: [
                                TableRow(children: [
                                  Container(child: Text('#', style: TextStyle(fontWeight: FontWeight.bold)) ,alignment: Alignment.center,height: 50,),
                                  Container(child: Text('S.No.', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                  Container(child: Text('Partner Name', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                  Container(child: Text('Partner Address', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                  Container(child: Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                  Container(child: Text('Phone Number', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                  Container(child: Text('Total Company', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                  Container(child: Text('Total Investor', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                  Container(child: Text('Total State', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                  Container(child: Text('Total City', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                  Container(child: Text('Total Market Value', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                  Container(child: Text('Action', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                ]),

                                TableRow(children: [
                                  Container(alignment: Alignment.center, child:
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12.0),
                                    child: Column(
                                      children: [

                                        Container(
                                          width: 30,
                                          height: 30,
                                          child: FloatingActionButton(
                                            shape: const BeveledRectangleBorder( borderRadius: BorderRadius.zero ),
                                            backgroundColor: EditBtn,
                                            child:  Icon(visibleTable_==true?Icons.remove:Icons.add,size: 15,color: Colors.white,),
                                            onPressed: () { setState(() {
                                              visibleTable_ =! visibleTable_;
                                            }); },
                                          ),
                                        )

                                      ],
                                    ),
                                  )),
                                  Container(alignment: Alignment.center, child: const Padding(
                                    padding: EdgeInsets.only(top: 20.0),
                                    child: Text('1', style: TextStyle(fontWeight: FontWeight.bold)),
                                  )),
                                  Container(alignment: Alignment.center, child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold))),
                                  Container(alignment: Alignment.center, child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold))),
                                  Container(alignment: Alignment.center, child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold))),
                                  Container(alignment: Alignment.center, child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold))),
                                  Container(alignment: Alignment.center, child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold))),
                                  Container(alignment: Alignment.center, child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold))),
                                  Container(alignment: Alignment.center, child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold))),
                                  Container(alignment: Alignment.center, child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold))),
                                  Container(alignment: Alignment.center, child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold))),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 4.0, top: 3),
                                              child: Container(
                                                decoration: BoxDecoration(color: EditBtn,
                                                  borderRadius: BorderRadius.circular(4.0),
                                                ),
                                                child: GestureDetector(child: TextButton(onPressed: () { setState(() {
                                                  sendCompany_=!sendCompany_;
                                                }); },
                                                    child: const Text("Send Company",style: TextStyle(color: Colors.white),))),
                                              ),
                                            ),
                                          ],
                                        ),

                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 4.0,top: 4, bottom: 3),
                                              child: Container(
                                                width: 145,
                                                decoration: BoxDecoration(color: SubmitGreen,
                                                  borderRadius: BorderRadius.circular(4.0),
                                                ),
                                                child: GestureDetector(child: TextButton(onPressed: () { setState(() {
                                                  receiveCompany_=!receiveCompany_;
                                                }); },
                                                    child: const Text("Receive Company",style: TextStyle(color: Colors.white),))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),

                                TableRow(children: [
                                  Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                  Container(width:200,alignment: Alignment.center, child: const Text('1', style: TextStyle(fontWeight: FontWeight.bold))),
                                  Container(alignment: Alignment.center, child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold))),
                                  Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                  Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                  Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                  Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                  Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                  Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                  Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                  Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                  Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                ])

                              ],
                            ),
                            Visibility(
                              visible: visibleTable_,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1
                                  )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Table(
                                    columnWidths: {

                                      1: FlexColumnWidth(4),
                                      2: FlexColumnWidth(4),
                                      10:FlexColumnWidth(3)
                                    },
                                    border: TableBorder.all(color: Colors.black),
                                    children: [
                                      TableRow(children: [
                                        Container(child: Text('S.No.', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                        Container(child: Text('Partner Name', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                        Container(child: Text('Partner Address', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                        Container(child: Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                        Container(child: Text('Phone Number', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                        Container(child: Text('Total Company', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                        Container(child: Text('Total Investor', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                        Container(child: Text('Total State', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                        Container(child: Text('Total City', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                        Container(child: Text('Total Market Value', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                        Container(child: Text('Action', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                                      ]),

                                      TableRow(children: [
                                        Container(child: Text('1', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                        Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                        Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                        Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                        Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                        Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                        Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                        Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                        Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                        Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                                        Container(
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 4.0, top: 3),
                                                    child: Container(
                                                      decoration: BoxDecoration(color: EditBtn,
                                                        borderRadius: BorderRadius.circular(4.0),
                                                      ),
                                                      child: GestureDetector(child: TextButton(onPressed: () { setState(() {
                                                        sendCompany_=!sendCompany_;
                                                      }); },
                                                          child: Text("Send Company",style: TextStyle(color: Colors.white),))),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 4.0,top: 4, bottom: 3),
                                                    child: Container(
                                                      width: 145,
                                                      decoration: BoxDecoration(color: SubmitGreen,
                                                        borderRadius: BorderRadius.circular(4.0),
                                                      ),
                                                      child: GestureDetector(child: TextButton(onPressed: () { setState(() {
                                                        receiveCompany_=!receiveCompany_;
                                                      }); },
                                                          child: Text("Receive Company",style: TextStyle(color: Colors.white),))),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),alignment: Alignment.center,
                                        ),
                                      ]),
                                    ],
                                  ),
                                )
                              ),
                            ),

                          ],
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
}


class createNewContainer extends StatefulWidget {
  const createNewContainer({Key key}) : super(key: key);

  @override
  State<createNewContainer> createState() => _createNewContainerState();
}

class _createNewContainerState extends State<createNewContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(alignment: Alignment.centerLeft,child: Text("Select Company for Send Customer*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),

                  SizedBox(height: 5,),
                  Container(
                    width: MediaQuery.of(context).size.width/6,
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
                        hint: Text('--All Companies--',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
              SizedBox(height: 5,width: 8,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(alignment: Alignment.centerLeft,child: Text("Select State for Send Customer*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                  SizedBox(height: 5,),
                  Container(
                    width: MediaQuery.of(context).size.width/6,
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
                        hint: Text('--Select States--',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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

              SizedBox(height: 5,width: 8,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(alignment: Alignment.centerLeft,child: Text("Select City for Send Customer*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                  SizedBox(height: 5,),
                  Container(
                    width: MediaQuery.of(context).size.width/6,
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
                        hint: Text('--Select Cities--',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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

              SizedBox(height: 5,width: 8,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(alignment: Alignment.centerLeft,child: Text("Select Pincode for Send Customer*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                  SizedBox(height: 5,),
                  Container(
                    width: MediaQuery.of(context).size.width/6,
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
                        hint: Text('--Select Pincode--',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Container(alignment: Alignment.centerLeft,child: Text("Number of Investor *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                      ),
                    ],
                  ),

                  SizedBox(height: 4,),
                  custom_textField_withoutlabel(
                      investor_Controller,
                      "Enter Number of Investor",
                      "Please Enter Number of Investor",
                      Colors.black45 ,
                      SizeConfig.blockSizeVertical*1.5,
                      MediaQuery.of(context).size.width/6
                  ),
                ],
              ),

              SizedBox(height: 5,width: 8,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Container(alignment: Alignment.centerLeft,child: Text("Value of Share *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                      ),
                    ],
                  ),

                  SizedBox(height: 4,),
                  custom_textField_withoutlabel(
                      shares_value_controller,
                      "Enter Value of Share",
                      "Please Enter Value of Share",
                      Colors.black45 ,
                      SizeConfig.blockSizeVertical*1.5,
                      MediaQuery.of(context).size.width/6
                  ),
                ],
              ),
            ],
          ),

        ],),
    );

  }



  List<Widget> containerList = [
    const createNewContainer(),
  ];

  // Add
  void addContainer() {
    containerList.add(createNewContainer());
  }

  // Pop
  void popContainer() {
    containerList.remove(createNewContainer());
  }
}


class SendCompany extends StatefulWidget {
  const SendCompany({Key key}) : super(key: key);

  @override
  State<SendCompany> createState() => _SendCompanyState();
}

class _SendCompanyState extends State<SendCompany> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageBackground,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Name",
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                ),

              ],
            ),
            color: Colors.white,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Form(
              key: _formKey,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      height: 140,
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(
                              color: Colors.black,
                              width: 2
                          ))
                      ),
                      child: Table(

                        border: TableBorder.all(color: Colors.black),
                        children: [
                          TableRow(children: [
                            Container(child: Text('Number of Companies', style: TextStyle(fontWeight: FontWeight.bold)) ,alignment: Alignment.center,height: 50,),
                            Container(child: Text('Total Number of Shares', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                            Container(child: Text('Total Number of Investors', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                            Container(child: Text('Total Value of Shares', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),

                          ]),
                          TableRow(children: [
                            Container(height:40,child: Text('1'),alignment: Alignment.center),
                            Container(child: Text(' '),alignment: Alignment.center),
                            Container(child: Text(' '),alignment: Alignment.center),
                            Container(child: Text(' '),alignment: Alignment.center),
                          ]),

                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [

                              Column(children: _childrenList(),),
                            ],
                          ),
                        ],),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (containerList.length==1) Container() else Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Container(width: 30, height: 30,
                              child: FloatingActionButton(
                                // shape: BeveledRectangleBorder( borderRadius: BorderRadius.zero ),
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.remove, size: 15, color: Colors.white,),
                                onPressed: () {
                                  setState(() {popContainer();});
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: 30,
                            child: FloatingActionButton(
                              backgroundColor: SubmitGreen,
                              onPressed: () { setState(() {
                                addContainer();
                              }); },
                              child:  Icon(Icons.add, size: 20, color: Colors.white,),
                            ),
                          ),

                          custom_Newbutton(Save,SubmitGreen,"Save Company")
                        ],
                      ),
                    )
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

  }
  List<Widget> containerList = [
    const createNewContainer(),
  ];

  // Add
  void addContainer() {
    containerList.add(createNewContainer());
  }

  // _childrenList
  List<Widget> _childrenList() {
    return containerList;
  }
  void popContainer() {
    containerList.removeLast();
  }
}

class ReceiveCompany extends StatefulWidget {
  const ReceiveCompany({Key key}) : super(key: key);

  @override
  State<ReceiveCompany> createState() => _ReceiveCompanyState();
}
var company_name_controller = TextEditingController();
class _ReceiveCompanyState extends State<ReceiveCompany> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageBackground,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Investor list",
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                ),
                SizedBox(width: 1180,),
                custom_Newbutton(Export ,EditBtn, "Export")
              ],
            ),
            color: Colors.white,
          ),

          Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Form(
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: [

                        SizedBox(height: 10,width: 10 ),
                        custom_textField_withlabel2(
                            company_name_controller,
                            "Enter Company name",
                            Colors.green,
                            15,
                            "Please Enter Company",
                            "Company name*",
                            true
                        ),
                        SizedBox(height: 10,width: 10),
                        custom_textField_withlabel2(
                            company_name_controller,
                            "Enter Investor Name",
                            Colors.green,
                            15,
                            "Please Investor Name",
                            "Investor Name*",
                            true
                        ),SizedBox(height: 10,width: 10),
                        custom_textField_withlabel2(
                            company_name_controller,
                            "Enter Father Name",
                            Colors.green,
                            15,
                            "Please Father Name",
                            "Father Name*",
                            true
                        ),
                        SizedBox(height: 10,width: 10,),
                        custom_textField_withlabel2(
                            company_name_controller,
                            "Enter Phone No.",
                            Colors.green,
                            15,
                            "Please Enter Phone No.",
                            "Phone No.*",
                            true
                        ),
                        SizedBox(height: 10,width: 10,),
                        custom_textField_withlabel2(
                            company_name_controller,
                            "Enter State",
                            Colors.green,
                            15,
                            "Please Enter State",
                            "State*",
                            true
                        ),
                        SizedBox(height: 10,width: 10,),
                        custom_textField_withlabel2(
                            company_name_controller,
                            "Enter City",
                            Colors.green,
                            15,
                            "Please Enter City",
                            "City*",
                            true
                        ),
                        custom_button(Save,"Search"),
                      ],
                    ),
                  ),
                ),
                Table(
                  columnWidths: {
                    2: FlexColumnWidth(4),
                    3: FlexColumnWidth(4),
                  },
                  border: TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(children: [
                      Container(child: Text('S.No.', style: TextStyle(fontWeight: FontWeight.bold)) ,alignment: Alignment.center,height: 50,),
                      Container(child: Text('Company Name', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Invester Name', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Father Name', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('State', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('City', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                    ]),

                    TableRow(children: [
                      Container(child: Padding(
                        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                        child: Text('1', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                    ]),
                  ],
                ),
              ],
            ),
          ),
    ),
        ],
      ),);
  }
  Export(){

  }
  Save(){

  }
}
