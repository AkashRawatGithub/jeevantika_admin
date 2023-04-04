import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/text_field.dart';

class BackofficeList extends StatefulWidget {
  const BackofficeList({Key key}) : super(key: key);

  @override
  State<BackofficeList> createState() => _BackofficeListState();
}
var _selected;
var investor_Controller = TextEditingController();
var shares_value_controller = TextEditingController();
List<String> _Values = ['a','b','ds','2','4','5','6'];
var sendCompany_=false;

class _BackofficeListState extends State<BackofficeList> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageBackground,
      child: sendCompany_==false?Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Backoffice List",
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
            ),
            color: Colors.white,
          ),

          // Padding(
          //   padding: const EdgeInsets.only(top: 4.0),
          //   child: Container(
          //     // height: MediaQuery.of(context).size.height * 0.58,
          //     width: MediaQuery.of(context).size.width,
          //     alignment: Alignment.centerLeft,
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: SingleChildScrollView(
          //         scrollDirection: Axis.horizontal,
          //         child: DataTable(
          //           columns: _createColumns(),
          //           border: TableBorder.all(),
          //           rows: _createRows(),
          //         ),
          //       ),
          //     ),
          //     color: Colors.white,
          //   ),
          // ),

            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Table(

                border: TableBorder.all(color: Colors.black),
                children: [
                      TableRow(children: [
                          Container(child: Text('S.No.', style: TextStyle(fontWeight: FontWeight.bold)) ,alignment: Alignment.center,height: 50,),
                          Container(padding:EdgeInsets.all(3),child: Text('Backoffice Name', style: TextStyle(fontWeight: FontWeight.bold),softWrap: false,),alignment: Alignment.center,height: 50,),
                          Container(child: Text('Backoffice Address', style: TextStyle(fontWeight: FontWeight.bold),softWrap: false,),alignment: Alignment.center,height: 50,),
                          Container(child: Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                          Container(child: Text('Phone No.', style: TextStyle(fontWeight: FontWeight.bold),softWrap: false,),alignment: Alignment.center,height: 50,),
                          Container(child: Text('Total Company', style: TextStyle(fontWeight: FontWeight.bold),softWrap: false,),alignment: Alignment.center,height: 50,),
                          Container(child: Text('Total Investor', style: TextStyle(fontWeight: FontWeight.bold),softWrap: false,),alignment: Alignment.center,height: 50,),
                          Container(child: Text('Total State', style: TextStyle(fontWeight: FontWeight.bold),softWrap: false,),alignment: Alignment.center,height: 50,),
                          Container(child: Text('Total City', style: TextStyle(fontWeight: FontWeight.bold),softWrap: false,),alignment: Alignment.center,height: 50,),
                          Container(child: Text('Total Market Value', style: TextStyle(fontWeight: FontWeight.bold),softWrap: false,),alignment: Alignment.center,height: 50,),
                          Container(child: Text('Action', style: TextStyle(fontWeight: FontWeight.bold,),softWrap: false,),alignment: Alignment.center,height: 50)
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
                                    padding: const EdgeInsets.only(left: 4.0, top: 2),
                                    child: Container(
                                      decoration: BoxDecoration(color: EditBtn,
                                        borderRadius: BorderRadius.circular(4.0),
                                      ),
                                      child: GestureDetector(child: TextButton(onPressed: () { setState(() {
                                        sendCompany_=!sendCompany_;
                                      }); },
                                      child: Text("Edit",style: TextStyle(color: Colors.white),))),
                                    ),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0,top: 4, bottom: 2),
                                    child: Container(
                                      width: 85,
                                      decoration: BoxDecoration(color: DeleteBtn,
                                        borderRadius: BorderRadius.circular(4.0),
                                      ),
                                      child: GestureDetector(child: TextButton(onPressed: () { setState(() {

                                      }); },
                                          child: Text("Delete",style: TextStyle(color: Colors.white),))),
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
                    ],
                  ),
          ),
              ),
                 )

        ],
      ):
      Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Name",
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
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
                        hint: Text('--Select State--',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
