import 'dart:developer';
import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

import '../../page_layout.dart';
import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';

class Manage_Registrar extends StatefulWidget {
  const Manage_Registrar({Key key}) : super(key: key);

  @override
  State<Manage_Registrar> createState() => _Manage_RegistrarState();
}
class MyData {
  final int id;
  final String name;
  final String description;
  final String data;

  MyData({this.id, this.name, this.description, this.data});
}
class _Manage_RegistrarState extends State<Manage_Registrar> {
  final _formKey = GlobalKey<FormState>();
  var email_controller = TextEditingController();
  var address_controller = TextEditingController();
  var name_controller = TextEditingController();
  var contect_controller = TextEditingController();
  var grp_values=[
    "Users","Leads","Premium","Test Group"
  ];

  int _currentPage = 1;
  int _rowsPerPage = 10;
  List<MyData> _data = List.generate(100, (index) => MyData(id: index + 1, name: 'Name $index', description: 'Registrar $index', data:'user personal data  $index'));

  List<MyData> get _pagedData {
    final startIndex = (_currentPage - 1) * _rowsPerPage;
    final endIndex = startIndex + _rowsPerPage;
    return _data.sublist(startIndex, endIndex > _data.length ? _data.length : endIndex);
  }

  var message_title_controller = TextEditingController();
  var message_controller = TextEditingController();

  List<String> _values = ['a','b','ds','2','4','5','6'];
  var _selected;
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
                  child: Text("Registrar Table", style: TextStyle(fontSize: 22,color: Colors.green),),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                      Container(
                        child: Row(
                          children: [
                            SizedBox(height: 10,width: 10,),
                            Container(
                              width: MediaQuery.of(context).size.width*0.21,
                              height: 28,
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
                                  hint: Text('Select Business Partner',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
                            SizedBox(height: 10,width: 10,),
                            Container(child: custom_textField_withlabel4(
                                name_controller,
                                "Enter Name",
                                "Name",
                                Colors.black54,
                                SizeConfig.blockSizeVertical*1.5,
                                MediaQuery.of(context).size.width/6.9
                            ),),
                            SizedBox(height: 10,width: 10,),
                            Container(child: custom_textField_withlabel4(
                                address_controller,
                                "Enter Address",
                                "Address",
                                Colors.black54,
                                SizeConfig.blockSizeVertical*1.5,
                                MediaQuery.of(context).size.width/6.9
                            ),),
                            SizedBox(height: 10,width: 10,),
                            Container(child: custom_textField_withlabel4(
                                email_controller,
                                "Enter Email",
                                "Email",
                                Colors.black54,
                                SizeConfig.blockSizeVertical*1.5,
                                MediaQuery.of(context).size.width/7.9
                            ),),
                            SizedBox(height: 10,width: 10,),
                            Container(child: custom_textField_withlabel4(
                                contect_controller,
                                "Enter Phone No.",
                                "Phone No.",
                                Colors.black54,
                                SizeConfig.blockSizeVertical*1.5,
                                MediaQuery.of(context).size.width/8.9
                            ),),
                            SizedBox(width: 5,),
                            custom_regisbutton(Save,"Search"),
                            SizedBox(width: 1,),
                            custom_Searchbutton(Save,"Export"),

                          ],
                        ),
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
                                  DataColumn(label: Text('Registrar Name')),
                                  DataColumn(label: Text('Registrar Address')),
                                  DataColumn(label: Text('Email')),
                                  DataColumn(label: Text('Phone No.')),
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

