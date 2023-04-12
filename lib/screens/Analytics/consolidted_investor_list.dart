import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

import '../../utils/screen_size.dart';
import '../../widgets/appbar_bottombar.dart';
import '../../widgets/button.dart';
import '../../widgets/get_drawer.dart';
import '../../widgets/text_field.dart';

class ConsolidtedInvestorList extends StatefulWidget {
  const ConsolidtedInvestorList({Key key}) : super(key: key);

  @override
  State<ConsolidtedInvestorList> createState() => _ConsolidtedInvestorListState();
}
class MyData {
  final int id;
  final String name;
  final String description;
  final String data;

  MyData({this.id, this.name, this.description, this.data});
}

class _ConsolidtedInvestorListState extends State<ConsolidtedInvestorList> {
  final TextEditingController _investorController = TextEditingController();
  bool _isChecked10 = true;bool _isChecked11 = true;
  bool _isChecked12 = true;bool _isChecked13 = true;bool _isChecked14  = true;

  int _currentPage = 1;
  int _rowsPerPage = 10;
  List<MyData> _data = List.generate(100, (index) => MyData(id: index + 1, name: 'Name $index', description: 'Registrar $index', data:'user personal data  $index'));

  List<MyData> get _pagedData {
    final startIndex = (_currentPage - 1) * _rowsPerPage;
    final endIndex = startIndex + _rowsPerPage;
    return _data.sublist(startIndex, endIndex > _data.length ? _data.length : endIndex);
  }
  List<String> _values = ['a','b','ds','2','4','5','6'];
  var _selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Row(
        children: [
          getDrawer(context),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: pageBackground,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                      height: MediaQuery.of(context).size.height*0.08,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding:  EdgeInsets.only(left: 8.0),
                        child: Text("Consolidated Investor Table", style: TextStyle(fontSize: 24,color: Colors.green),),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Consolidated Investor List",style: TextStyle(fontSize: 17),),
                            ),

                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Checkbox(
                                  value: _isChecked10,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      _isChecked10 = newValue;
                                    });
                                  },
                                ),
                                Text("Country",style: TextStyle(fontSize: 15),),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/2,
                              height: 38,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(
                                    width: 0.40),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: DropdownButton<String>(
                                  underline: SizedBox(height: 0,),
                                  isExpanded: true,
                                  value: _selected,
                                  hint: Text('Select Country',style: TextStyle(fontSize: 15,),),
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

                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Checkbox(
                                  value: _isChecked11,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      _isChecked11 = newValue;
                                    });
                                  },
                                ),
                                Text("State",style: TextStyle(fontSize: 15),),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/2,
                              height: 38,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(
                                    width: 0.40),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: DropdownButton<String>(
                                  underline: SizedBox(height: 0,),
                                  isExpanded: true,
                                  value: _selected,
                                  hint: Text('Select State',style: TextStyle(fontSize: 15,),),
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

                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Checkbox(
                                  value: _isChecked12,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      _isChecked12 = newValue;
                                    });
                                  },
                                ),
                                Text("City",style: TextStyle(fontSize: 15),),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/2,
                              height: 38,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(
                                    width: 0.40),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: DropdownButton<String>(
                                  underline: SizedBox(height: 0,),
                                  isExpanded: true,
                                  value: _selected,
                                  hint: Text('Select City',style: TextStyle(fontSize: 15,),),
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

                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Checkbox(
                                  value: _isChecked13,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      _isChecked13 = newValue;
                                    });
                                  },
                                ),
                                Text("Investor Name",style: TextStyle(fontSize: 15),),
                              ],
                            ),
                            custom_textField_withoutlabel(
                              _investorController,
                              "Enter Investor Name",
                              "Please Enter Investor Name",
                              Colors.grey,
                              15,
                              MediaQuery.of(context).size.width/2,
                            ),

                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Checkbox(
                                  value: _isChecked14,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      _isChecked14 = newValue;
                                    });
                                  },
                                ),
                                Text("Company Name",style: TextStyle(fontSize: 15),),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/2,
                              height: 38,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(
                                    width: 0.40),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: DropdownButton<String>(
                                  underline: SizedBox(height: 0,),
                                  isExpanded: true,
                                  value: _selected,
                                  hint: Text('Select Company Name',style: TextStyle(fontSize: 15,),),
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
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Checkbox(
                                  value: _isChecked14,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      _isChecked14 = newValue;
                                    });
                                  },
                                ),
                                Text("Total Number of Folios",style: TextStyle(fontSize: 15),),
                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Checkbox(
                                  value: _isChecked14,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      _isChecked14 = newValue;
                                    });
                                  },
                                ),
                                Text("Market Price",style: TextStyle(fontSize: 15),),
                              ],
                            ),
                            Row(children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Minimum Market Price",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                    ),
                                    custom_textField_withoutlabel(
                                      _investorController,
                                      "Enter Minimum Market Price",
                                      "Please Enter Minimum Market Price",
                                      Colors.grey,
                                      15,
                                      MediaQuery.of(context).size.width/6,
                                    ),
                                  ],),
                              ),

                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Minimum Market Price",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                    ),
                                    custom_textField_withoutlabel(
                                      _investorController,
                                      "Enter Address",
                                      "Please Enter Address",
                                      Colors.grey,
                                      15,
                                      MediaQuery.of(context).size.width/6,
                                    ),
                                  ],),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Expanded(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    custom_button(Search,"Search"),
                                    custom_button(Export,"Export"),

                                  ],)),
                              ),

                              Expanded(child: Container()),
                              Expanded(child: Container()),
                            ],),

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
                                        DataColumn(label: Text('Country')),
                                        DataColumn(label: Text('State')),
                                        DataColumn(label: Text('Number of Folio')),
                                        DataColumn(label: Text('	Total Market Value')),
                                      ],
                                      rows: _pagedData.map((data) {
                                        return DataRow(
                                          cells: [
                                            DataCell(Text(data.id.toString())),
                                            DataCell(Text(data.name)),
                                            DataCell(Text(data.description)),
                                            DataCell(Text(data.name)),
                                            DataCell(Text(data.data)),
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
                          ],),
                      ),
                    ),
                  )
                ],),

              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: getBottomBar(),
    );
  }
  Search(){}
  Export(){}
}

