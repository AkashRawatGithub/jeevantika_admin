import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({Key key}) : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}
class MyData {
  final int id;
  final String name;
  final String description;
  final String data;

  MyData({this.id, this.name, this.description, this.data});
}
class _AddEventState extends State<AddEvent> {

  final _formKey = GlobalKey<FormState>();

  int _currentPage = 1;
  int _rowsPerPage = 10;
  List<MyData> _data = List.generate(100, (index) => MyData(id: index + 1, name: 'Name $index', description: 'Registrar $index', data:'user personal data  $index'));

  List<MyData> get _pagedData {
    final startIndex = (_currentPage - 1) * _rowsPerPage;
    final endIndex = startIndex + _rowsPerPage;
    return _data.sublist(startIndex, endIndex > _data.length ? _data.length : endIndex);
  }

  var event_id_controller = TextEditingController();
  var event_name_controller = TextEditingController();
  bool value = false;
  String cdate = DateFormat("yyyy-MM-dd").format(DateTime.now());

  final List<String> entries = <String>['bro1', 'bro2', 'bro3','bro4', 'bro5', 'bro6','bro7', 'bro8', 'bro9','bro10', 'bro11', 'bro12'];
  List<String> userChecked = [];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:  PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child:  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 7),
            child: Container(
              color: Colors.white,
              child: Container(height: MediaQuery.of(context).size.height*0.04,width: MediaQuery.of(context).size.width/2,
                child: TabBar(
                  unselectedLabelColor: Colors.green,
                  labelColor: Colors.white,
                  indicatorColor: Colors.green,
                  indicatorWeight: 2,
                  indicator: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(5)),
                  tabs: [
                    Container(
                        child: Text("Add Notification Event",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 1),)),
                    Padding(
                      padding:  EdgeInsets.only(left: 5),
                      child: Container(
                          child: Text("Notification Event List",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 1),)),
                    )],
                ),
              ),
            ),
          ),
        ),
        body:  TabBarView(
          children: <Widget>[
            Column( mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(padding: EdgeInsets.only(top: 5), height: MediaQuery.of(context).size.height*0.83,
                    child: Container(
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
                    ))
              ],
            ),
            Column(
              children: <Widget>[
                Container(padding: EdgeInsets.only(top: 5), height: MediaQuery.of(context).size.height*0.83,color: pageBackground,
                  child:  Container(
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
                                Text("Add Customer Group", style: TextStyle(fontSize: 22,color: Colors.green),),
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
                  ),)
              ],
            )
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
  void _onSelected(bool selected, String dataName) {
    if (selected == true) {
      setState(() {
        userChecked.add(dataName);
      });
    } else {
      setState(() {
        userChecked.remove(dataName);
      });
    }}

}
