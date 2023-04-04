import 'dart:developer';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

import '../../widgets/style/style.dart';


class Request_Business extends StatefulWidget {
  const Request_Business({Key key}) : super(key: key);

  @override
  State<Request_Business> createState() => _Request_BusinessState();
}
class MyData {
  final int id;
  final String name;
  final String description;
  final String data;

  MyData({this.id, this.name, this.description, this.data});
}

class _Request_BusinessState extends State<Request_Business> {
  int _currentPage = 1;
  int _rowsPerPage = 10;
  List<MyData> _data = List.generate(100, (index) => MyData(id: index + 1, name: 'Name $index', description: 'Registrar $index', data:'user personal data  $index'));

  List<MyData> get _pagedData {
    final startIndex = (_currentPage - 1) * _rowsPerPage;
    final endIndex = startIndex + _rowsPerPage;
    return _data.sublist(startIndex, endIndex > _data.length ? _data.length : endIndex);
  }

  final _formKey = GlobalKey<FormState>();
  var email_controller = TextEditingController();
  var address_controller = TextEditingController();
  var contect_controller = TextEditingController();
  var grp_values=[
    "Users","Leads","Premium","Test Group"
  ];
  var message_title_controller = TextEditingController();
  var message_controller = TextEditingController();
  var totel =200;

  bool value = false;

  final List<String> entries = <String>['bro1', 'bro2', 'bro3','bro4', 'bro5', 'bro6','bro7', 'bro8', 'bro9','bro10', 'bro11', 'bro12'];
  List<String> userChecked = [];
  @override
  void initState() {
    super.initState();
  }
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageBackground,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.08,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                child: Padding(
                  padding:  EdgeInsets.only(left: 8.0),
                  child: Text("Request Business Partner", style: TextStyle(fontSize: 22,color: Colors.green),),
                ),
              ),
              SizedBox(height: 2,),
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
                          DataColumn(label: Text('Name')),
                          DataColumn(label: Text('Father/Husband Name')),
                          DataColumn(label: Text('Contact')),
                          DataColumn(label: Text('Email')),
                          DataColumn(label: Text('State')),
                          DataColumn(label: Text('City')),
                          DataColumn(label: Text('Action')),
                        ],
                        rows: _pagedData.map((data) {
                          return DataRow(
                            cells: [
                              DataCell(Text(data.id.toString())),
                              DataCell(Text(data.name)),
                              DataCell(Text(data.description)),
                              DataCell(Text(data.name)),
                              DataCell(Text(data.data)),
                              DataCell(Text(data.name)),
                              DataCell(Text(data.data)),
                              DataCell(Row(
                                children: [
                                  HoverAnimatedContainer(
                                    child: TextButton(onPressed: () {  }, child: Text("Appprove",style: TextStyle(color: Colors.white),),),
                                    color: EditBtn,
                                    hoverColor: Colors.green,),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 5),
                                    child: HoverAnimatedContainer(
                                      child: TextButton(onPressed: () {  }, child: Text("Not Appprove",style: TextStyle(color: Colors.white),),),
                                      color: DeleteBtn,
                                      hoverColor: Colors.redAccent,),
                                  ),
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
        ),
      ),
    );

  }
  Save(){
    if (_formKey.currentState.validate()) {
      log("message");
    }
  }
  Edit_ (){

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

