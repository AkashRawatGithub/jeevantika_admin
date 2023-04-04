import 'dart:js';

import 'package:hovering/hovering.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';
import 'package:flutter/material.dart';

import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/text_field.dart';

class BackofficeInvestorList extends StatefulWidget {
  const BackofficeInvestorList({Key key}) : super(key: key);

  @override
  State<BackofficeInvestorList> createState() => _BackofficeInvestorListState();
}
final DataTableSource _data = MyData();
final _formKey = GlobalKey<FormState>();
var company_name_controller = TextEditingController();
class _BackofficeInvestorListState extends State<BackofficeInvestorList> {

  @override
  Widget build(BuildContext context) {
    var updatelist_= false;
    return Scaffold(
      body: Container(
        color: pageBackground,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                        "Investor Table",
                        style: TextStyle(fontSize: 20, color: Colors.green),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width/1.5,),
                    custom_Newbutton(Export, EditBtn, "  Export  ")
                  ],
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
                              custom_button(Search, "  Search  ")
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    PaginatedDataTable(
                      source: _data,
                      columns: [
                        DataColumn(
                            label: Text(
                              'S.No.',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        DataColumn(
                            label: Text(
                              'Company Name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        DataColumn(
                            label: Text(
                              'Investor Name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        DataColumn(
                            label: Text(
                              'Father Name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        DataColumn(
                            label: Text(
                              'Country',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        DataColumn(
                            label: Text(
                              'State',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        DataColumn(
                            label: Text(
                              'City',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        DataColumn(
                            label: Text(
                              'Action',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ))
                      ],
                      columnSpacing: 100,
                      horizontalMargin: 10,
                      rowsPerPage: 1,
                      showCheckboxColumn: false,
                    ),
                  ],
                ),
              ),

              updatelist_?Investorupdate():Container()

            ],
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


class MyData extends DataTableSource {
  bool showBorder = false;

  final List<Map<String, dynamic>> _data = List.generate(
      1,
          (index) => {
        "S.No.": index + 1,
        "Company Name": " ",
        "Investor Name": " ",
        "Father Name": " ",
        "Country": " ",
        "State": " ",
        "City": "",
        "Action": "",
      });

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => _data.length;
  @override
  int get selectedRowCount => 0;
  @override

  DataRow getRow(int index) {
    // final BuildContext context;
    return DataRow(cells: [
      DataCell(Text(_data[index]['S.No.'].toString())),
      DataCell(Text(_data[index]["Company Name"].toString())),
      DataCell(Text(_data[index]["Investor Name"].toString())),
      DataCell(Text(_data[index]["Father Name"].toString())),
      DataCell(Text(_data[index]["Country"].toString())),
      DataCell(Text(_data[index]["State"].toString())),
      DataCell(Text(_data[index]["City"].toString())),
      DataCell(Row(
        children: [
          HoverAnimatedContainer(
            child: TextButton(
              onPressed: () { Navigator.pushNamed(context as BuildContext, '/edit');  },
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.white),
              ),
            ),
            color: EditBtn,
            hoverColor: Colors.green,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: HoverAnimatedContainer(
              child: TextButton(
                onPressed: () {  },
                child: Text(
                  "Delete",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              color: DeleteBtn,
              hoverColor: Colors.green,
            ),
          ),
        ],
      ))
    ]);
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
