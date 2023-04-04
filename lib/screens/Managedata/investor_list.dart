
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';


class InvestorList extends StatefulWidget {
  const InvestorList({Key key}) : super(key: key);

  @override
  State<InvestorList> createState() => _InvestorListState();
}

class MyData {
  final int id;
  final String name;
  final String description;
  final String data;

  MyData({this.id, this.name, this.description, this.data});
}
final _formKey = GlobalKey<FormState>();
var company_name_controller = TextEditingController();

class _InvestorListState extends State<InvestorList> {
  int _currentPage = 1;
  int _rowsPerPage = 10;
  List<MyData> _data = List.generate(100, (index) => MyData(id: index + 1, name: 'Name $index', description: 'Registrar $index', data:'user personal data  $index'));

  List<MyData> get _pagedData {
    final startIndex = (_currentPage - 1) * _rowsPerPage;
    final endIndex = startIndex + _rowsPerPage;
    return _data.sublist(startIndex, endIndex > _data.length ? _data.length : endIndex);
  }
  @override
  Widget build(BuildContext context) {
    var updatelist_= false;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: pageBackground,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [

                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Investor List",
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  ),
                  color: Colors.white,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Form(
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(height: 10, width: 10),
                                custom_SearchField_withlabel(
                                    company_name_controller,
                                    "Enter Company",
                                    Colors.green,
                                  15,
                                    "Enter Company Name*",
                                    ),
                                SizedBox(height: 10, width: 10),
                                custom_SearchField_withlabel(
                                    company_name_controller,
                                    "Enter Investor",
                                    Colors.green,
                                  15,
                                    "Select Investor Name *",
                                    ),
                                SizedBox(height: 10, width: 10),
                                custom_SearchField_withlabel(
                                    company_name_controller,
                                    "Enter Father's Name",
                                    Colors.green,
                                  15,
                                    "Father's Name*",
                                    ),
                                SizedBox(height: 10, width: 10),
                                custom_SearchField_withlabel(
                                    company_name_controller,
                                    "Enter Country",
                                    Colors.green,
                                  15,
                                    "Country*",
                                    ),
                                SizedBox(
                                  height: 10,
                                  width: 10,
                                ),
                                custom_SearchField_withlabel(
                                    company_name_controller,
                                    "Enter State",
                                    Colors.green,
                                  15,
                                    "State*",
                                    ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 10,
                                  width: 10,
                                ),
                                custom_SearchField_withlabel(
                                    company_name_controller,
                                    "Enter City",
                                    Colors.green,
                                  15,
                                    "City*",
                                    ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.01,
                                ),
                                custom_button(Search, "  Search  "),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DataTable(
                        columns: [
                          DataColumn(label: Text('S.No.')),
                          DataColumn(label: Text('Company Name')),
                          DataColumn(label: Text('Investor Name')),
                          DataColumn(label: Text('Father Name')),
                          DataColumn(label: Text('Country')),
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

                updatelist_?Investorupdate():Container()

              ],
             ),
          ),
        ),
      ),
    );
  }

  Search() {
    if (_formKey.currentState.validate()) {}
  }

  Export() {
    if (_formKey.currentState.validate()) {}
  }

  Save() {
    if (_formKey.currentState.validate()) {}
  }
}


class Investorupdate extends StatefulWidget {
  const Investorupdate({Key key}) : super(key: key);

  @override
  State<Investorupdate> createState() => _InvestorupdateState();
}

class _InvestorupdateState extends State<Investorupdate> {
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: _formKey,
      child: Container(
        color: pageBackground,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 4.0, left: 4.0, top: 4.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.08,
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Update Company",
                    style: TextStyle(
                        fontSize: 20, color: Colors.green),
                  ),
                ),
                color: Colors.white,
              ),
            ),
            Padding(
              padding:
              EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 4.0),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Company Name *",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold,
                                          color: dark))),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        custom_textField_withoutlabel(
                            company_name_controller,
                            "Enter Company Name",
                            "Please Enter Company Name",
                            Colors.black45,
                            SizeConfig.blockSizeVertical * 1.5,
                            MediaQuery.of(context).size.width / 2),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 4.0),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Phone No *",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold,
                                          color: dark))),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        custom_textField_withoutlabel(
                            company_name_controller,
                            "Enter Phone No",
                            "Please Enter Phone No",
                            Colors.black45,
                            SizeConfig.blockSizeVertical * 1.5,
                            MediaQuery.of(context).size.width / 2),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 4.0),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Email *",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold,
                                          color: dark))),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        custom_textField_withoutlabel(
                            company_name_controller,
                            "Enter Email",
                            "Please Enter Email",
                            Colors.black45,
                            SizeConfig.blockSizeVertical * 1.5,
                            MediaQuery.of(context).size.width / 2),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 4.0),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Company Address *",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold,
                                          color: dark))),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        custom_textField_withoutlabel(
                            company_name_controller,
                            "Enter Company Address",
                            "Please Enter Company Address",
                            Colors.black45,
                            SizeConfig.blockSizeVertical * 1.5,
                            MediaQuery.of(context).size.width / 2),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 4.0),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Security Code *",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold,
                                          color: dark))),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        custom_textField_withoutlabel(
                            company_name_controller,
                            "Enter Security Code",
                            "Please Enter Security Code",
                            Colors.black45,
                            SizeConfig.blockSizeVertical * 1.5,
                            MediaQuery.of(context).size.width / 2),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 4.0),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Isin No *",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold,
                                          color: dark))),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        custom_textField_withoutlabel(
                            company_name_controller,
                            "Enter Isin No",
                            "Please Enter Isin No",
                            Colors.black45,
                            SizeConfig.blockSizeVertical * 1.5,
                            MediaQuery.of(context).size.width / 2),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 4.0),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Security ID *",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold,
                                          color: dark))),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        custom_textField_withoutlabel(
                            company_name_controller,
                            "Enter Security ID",
                            "Please Enter Security ID",
                            Colors.black45,
                            SizeConfig.blockSizeVertical * 1.5,
                            MediaQuery.of(context).size.width / 2),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 4.0),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "Current Market Price *",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold,
                                          color: dark))),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        custom_textField_withoutlabel(
                            company_name_controller,
                            "Enter Current Market Price",
                            "Please Enter Current Market Price",
                            Colors.black45,
                            SizeConfig.blockSizeVertical * 1.5,
                            MediaQuery.of(context).size.width / 2),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.08,
                  alignment: Alignment.centerLeft,
                  color: Colors.white,
                  child: custom_button(Save, "Add Company")),
            ),
          ],
        ),
      ),
    );
  }
  Save() {
    if (_formKey.currentState.validate()) {}
  }
}
