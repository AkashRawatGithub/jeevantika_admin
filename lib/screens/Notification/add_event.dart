import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../utils/screen_size.dart';
import '../../widgets/appbar_bottombar.dart';
import '../../widgets/button.dart';
import '../../widgets/get_drawer.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({Key key}) : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}

int _currentPage = 1;
int _rowsPerPage = 10;

const int numItems = 10;
List<bool> selected = List<bool>.generate(numItems, (int index) => false);

final _formKey = GlobalKey<FormState>();
bool value = false;

final List<String> entries = <String>['bro1', 'bro2', 'bro3','bro4', 'bro5', 'bro6','bro7', 'bro8', 'bro9','bro10', 'bro11', 'bro12'];
List<String> userChecked = [];
class MyData {
  final int id;
  final String name;
  final String description;
  final String data;

  MyData({this.id, this.name, this.description, this.data});
}
class _AddEventState extends State<AddEvent> {
  List Customer_group=[
    AddEventNotification(),
    NotificationEventList()
  ];
  int Current_index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Row(
        children: [
          getDrawer(context),
          Expanded(
            child: Column(
              children: [
                Expanded(child: Container(
                  color: pageBackground,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        height: 35,
                        width: MediaQuery.of(context).size.width/6,
                        child: GestureDetector(
                          onTap:(){setState(() {
                            Current_index=0;
                          });},
                          child: Container(decoration: BoxDecoration(
                              color: Current_index==0?Colors.green: Colors.transparent ,
                              // border: Current_index==0?Border.all(color: Colors.blueAccent):Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),width: SizeConfig.screenWidth/8,child: Center(child: Text("Add Notification Event",style: TextStyle(color: Current_index==0?Colors.white: Colors.black) )),),
                        ),

                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        height: 35,
                        width: MediaQuery.of(context).size.width/6,
                        child:  GestureDetector(
                          onTap: (){
                            setState(() {
                              Current_index=1;
                            });
                          },
                          child: Container(decoration: BoxDecoration(
                              color: Current_index==1?Colors.green: Colors.transparent ,
                              // border: Current_index==1?Border.all(color: Colors.blueAccent):Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),width: SizeConfig.screenWidth/8,child: Center(child: Text("Notification Event List",style: TextStyle(color: Current_index==1?Colors.white: Colors.black ,),)),),
                        ),

                      )
                    ],
                  ),
                )),
                Expanded(
                    flex: 14,
                    child: Customer_group[Current_index]
                )
              ],
            ),
          ),
        ],

      ),
      bottomNavigationBar: getBottomBar(),
    );
  }
}

class AddEventNotification extends StatefulWidget {
  const AddEventNotification({Key key}) : super(key: key);

  @override
  State<AddEventNotification> createState() => _AddEventNotificationState();
}

class _AddEventNotificationState extends State<AddEventNotification> {
  var event_id_controller = TextEditingController();
  var event_name_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: pageBackground,
      child: Column(
        children: [
          Form(
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
                        child: Text("Add Notification Event", style: TextStyle(fontSize: 20,color: Colors.green),),
                      ),
                      color: Colors.white,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 4.0, top: 4.0,right: 4.0),
                    child: Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                          children:[
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  SizedBox(width: 10,),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4.0),
                                        child: Container(alignment: Alignment.centerLeft,child: Text("Event Id *",  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4,),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: custom_textField_withoutlabel(
                                        event_id_controller,
                                        "Enter Event id",
                                        "Please Enter Event id",
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
                                        child: Container(alignment: Alignment.centerLeft,child: Text( "Event name *",  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4,),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: custom_textField_withoutlabel(
                                      event_name_controller,
                                      "Enter Event name",
                                      "Please Enter Event name",
                                      Colors.black54,
                                      SizeConfig.blockSizeVertical*1.5,
                                      MediaQuery.of(context).size.width/2,
                                    ),),

                                ],
                              ),
                            ),
                            Container(alignment: Alignment.centerLeft,child: custom_button(Save,"Add Event"),)
                          ]
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationEventList extends StatefulWidget {
  const NotificationEventList({Key key}) : super(key: key);

  @override
  State<NotificationEventList> createState() => _NotificationEventListState();
}

class _NotificationEventListState extends State<NotificationEventList> {
  List<MyData> _data = List.generate(100, (index) => MyData(id: index + 1, name: 'Name $index', description: 'Registrar $index', data:'user personal data  $index'));

  List<MyData> get _pagedData {
    final startIndex = (_currentPage - 1) * _rowsPerPage;
    final endIndex = startIndex + _rowsPerPage;
    return _data.sublist(startIndex, endIndex > _data.length ? _data.length : endIndex);
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.08,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:  EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text("Notification Event List", style: TextStyle(fontSize: 22,color: Colors.green),),
                ],
              ),
            ),
            color: Colors.white,
          ),
          Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('S.No.')),
                      DataColumn(label: Text('Event Id')),
                      DataColumn(label: Text('Event Name')),
                      DataColumn(label: Text('Action')),
                    ],
                    rows: _pagedData.map((data) {
                      return DataRow(
                        cells: [
                          DataCell(Text(data.id.toString())),
                          DataCell(Text(data.name)),
                          DataCell(Text(data.description)),
                          DataCell(Row(
                            children: [
                              IconButton(icon: Icon(Icons.edit,size: 20,color: Colors.green,), onPressed: () {setState(() {

                              });  },),
                              IconButton(icon: Icon(Icons.delete,size: 20,color: Colors.red,), onPressed: () { setState(() {

                              });},),
                            ],
                          )),
                        ],
                      );
                    }).toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: _currentPage == 1
                          ? null
                          : () {
                        setState(() {
                          _currentPage--;
                        });
                      },
                    ),
                    Text('Page $_currentPage'),
                    IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: _currentPage == (_data.length / _rowsPerPage).ceil()
                          ? null
                          : () {
                        setState(() {
                          _currentPage++;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Save(){}