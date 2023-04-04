import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/button.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';
import '../../widgets/text_field.dart';


class AnalyticCustomerContact extends StatefulWidget {
  const AnalyticCustomerContact({Key key}) : super(key: key);

  @override
  State<AnalyticCustomerContact> createState() => _AnalyticCustomerContactState();
}
class MyData {
  final int id;
  final String name;
  final String description;
  final String data;

  MyData({this.id, this.name, this.description, this.data});
}

class _AnalyticCustomerContactState extends State<AnalyticCustomerContact> {
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: pageBackground,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.08,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 8.0),
                    child: Text("Customers List", style: TextStyle(fontSize: 20,color: Colors.green),),
                  ),
                  color: Colors.white,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 4.0,),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          custom_button_green(All,"All"),
                          custom_button_green(Synced,"Synced"),
                          custom_button_green(NotSynced,"Not Synced"),
                        ],
                      ),
                    ),
                  ),
                ),
                Form(
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: [

                        SizedBox(height: 10,width: 10 ),
                        custom_textField_withlabel2(
                            company_name_controller,
                            "Enter Customers Name",
                            Colors.green,
                            15,
                            "Please Enter Customers Name",
                            "Customers Name*",
                            true
                        ),
                        SizedBox(height: 10,width: 10),
                        custom_textField_withlabel2(
                            company_name_controller,
                            "Enter F/H/W Name",
                            Colors.green,
                            15,
                            "Please Enter F/H/W Name",
                            "F/H/W Name *",
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
                          child:custom_button_green(Save,"Search"),
                        ),
                        custom_Searchbutton(Save,"Export"),
                      ],
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
                            DataColumn(label: Text('Name')),
                            DataColumn(label: Text('F/H/W Name')),
                            DataColumn(label: Text('Phone No.')),
                            DataColumn(label: Text('Total Contacts')),
                            DataColumn(label: Text('Synced Contacts')),
                            DataColumn(label: Text('Action')),
                          ],
                          rows: _pagedData.map((data) {
                            return DataRow(
                              cells: [
                                DataCell(Text(data.id.toString())),
                                DataCell(Text(data.name)),
                                DataCell(Text(data.description)),
                                DataCell(Text(data.name)),
                                DataCell(Text(data.name)),
                                DataCell(Text(data.data)),
                                DataCell(Row(
                                  children: [
                                    custom_Searchbutton(ViewContact,"View Contacts"),
                                    custom_button_green(SyncData,"Sync Data"),
                                    custom_Searchbutton(ViewContact,"View Non Contacts"),
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
    );
  }
  Save(){
    if (_formKey.currentState.validate()) {

    }
  }
  All(){}
  Synced(){}
  NotSynced(){}
}

ViewContact() {
}
SyncData(){
}
