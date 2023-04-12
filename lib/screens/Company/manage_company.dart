import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/button.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';
import '../../widgets/appbar_bottombar.dart';
import '../../widgets/get_drawer.dart';
import '../../widgets/text_field.dart';


class ManageCompany extends StatefulWidget {
  const ManageCompany({Key key}) : super(key: key);

  @override
  State<ManageCompany> createState() => _ManageCompanyState();
}
class MyData {
  final int id;
  final String name;
  final String description;
  final String data;

  MyData({this.id, this.name, this.description, this.data});
}

class _ManageCompanyState extends State<ManageCompany> {
  int _currentPage = 1;
  int _rowsPerPage = 10;
  List<MyData> _data = List.generate(100, (index) => MyData(id: index + 1, name: 'Name $index', description: 'Registrar $index', data:'user personal data  $index'));

  List<MyData> get _pagedData {
    final startIndex = (_currentPage - 1) * _rowsPerPage;
    final endIndex = startIndex + _rowsPerPage;
    return _data.sublist(startIndex, endIndex > _data.length ? _data.length : endIndex);
  }
  final _formKey = GlobalKey<FormState>();
  var company_name_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      appBar: getAppBar(),
      // drawer: getDrawer(context),
      drawerEnableOpenDragGesture: false,
      body: Row(
        children: [
          getDrawer(context),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: pageBackground,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.08,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 8.0),
                        child: Text("Company Table", style: TextStyle(fontSize: 20,color: Colors.green),),
                      ),
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0,),
                      child: Form(
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            children: [

                              SizedBox(height: 10,width: 10 ),
                              custom_textField_withlabel2(
                                  company_name_controller,
                                  "Enter Company",
                                  Colors.green,
                                  15,
                                  "Please Enter Company",
                                  "Select Company*",
                                  true
                              ),
                              SizedBox(height: 10,width: 10),
                              custom_textField_withlabel2(
                                  company_name_controller,
                                  "Enter Registrar",
                                  Colors.green,
                                  15,
                                  "Please Enter Registrar",
                                  "Select Registrar *",
                                  true
                              ),SizedBox(height: 10,width: 10),
                              custom_textField_withlabel2(
                                  company_name_controller,
                                  "Enter Email",
                                  Colors.green,
                                  15,
                                  "Please Enter Email",
                                  "Email*",
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
                              Padding(
                                padding:  EdgeInsets.only(left: 8.0),
                                child:custom_button(Save,"Search"),
                              ),
                              custom_Searchbutton(Save,"Export"),
                            ],
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
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DataTable(
                              columns: [
                                DataColumn(label: Text('S.No.')),
                                DataColumn(label: Text('Company Name')),
                                DataColumn(label: Text('Registrar Name')),
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
          ),
        ],
      ),
      bottomNavigationBar: getBottomBar(),
    );
  }
  Save(){
    if (_formKey.currentState.validate()) {

    }
  }
}

Delete() {
}
Edit(){
  // return Navigator.push(
  //    context,
  //    MaterialPageRoute(builder: (context) => Edil()),
  //  );
}
