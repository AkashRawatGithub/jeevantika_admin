import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

import '../../utils/screen_size.dart';
import '../../widgets/appbar_bottombar.dart';
import '../../widgets/button.dart';
import '../../widgets/get_drawer.dart';
import '../../widgets/text_field.dart';

class AnalyticUserHistory extends StatefulWidget {
  const AnalyticUserHistory({Key key}) : super(key: key);

  @override
  State<AnalyticUserHistory> createState() => _AnalyticUserHistoryState();
}
class MyData {
  final int id;
  final String name;
  final String description;
  final String data;

  MyData({this.id, this.name, this.description, this.data});
}

class _AnalyticUserHistoryState extends State<AnalyticUserHistory> {
  var company_name_controller = TextEditingController();
  final TextEditingController _investorController = TextEditingController();
  bool _isChecked = true;bool _isChecked1 = true;bool _isChecked2 = true;bool _isChecked3 = true;bool _isChecked4 = true;bool _isChecked5 = true;
  bool _isChecked6 = true;bool _isChecked7 = true;bool _isChecked8 = true;bool _isChecked9 = true;bool _isChecked10 = true;bool _isChecked11 = true;
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
                        child: Text("User History", style: TextStyle(fontSize: 24,color: Colors.green),),
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
                              child: Text("User History",style: TextStyle(fontSize: 17),),
                            ),

                            Row(
                              children: [
                                SizedBox(height: 10,width: 10 ),
                                Expanded(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width/8,
                                    height: 30,
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
                                        hint: Text('Select Video',style: TextStyle(fontSize: 13,),),
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
                                ),
                                SizedBox(height: 10,width: 10 ),
                                Expanded(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width/8,
                                    height: 30,
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
                                        hint: Text('Select Testimonial',style: TextStyle(fontSize: 13,),),
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
                                ),
                                SizedBox(height: 10,width: 10 ),
                                Expanded(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width/8,
                                    height: 30,
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
                                        hint: Text('Select Weblink',style: TextStyle(fontSize: 13,),),
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
                                ),
                                SizedBox(height: 10,width: 10),
                                Expanded(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width/8,
                                    height: 30,
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
                                        hint: Text('Select Information',style: TextStyle(fontSize: 13,),),
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
                                ),
                                SizedBox(height: 10,width: 10),
                                Expanded(
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width/8,
                                    height: 30,
                                    child: TextField(
                                      style: TextStyle(fontSize: 13),
                                      onTap: () => _selectFromDate(context),
                                      readOnly: true,
                                      controller: TextEditingController(
                                        text: selecteFromDate == null ? '' : DateFormat.yMd().format(selecteFromDate),
                                      ),

                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(10),
                                        hintText: 'Select From Date',
                                        prefixIcon: Icon(Icons.calendar_today,size: 14,),
                                        border: OutlineInputBorder(
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 10,width: 10),
                                Expanded(
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width/8,
                                    height: 30,
                                    child: TextField(
                                      style: TextStyle(fontSize: 13),
                                      onTap: () => _selectToDate(context),
                                      readOnly: true,
                                      controller: TextEditingController(
                                        text: selecteToDate == null ? '' : DateFormat.yMd().format(selecteToDate),
                                      ),

                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(10),
                                        hintText: 'Select To Date',
                                        prefixIcon: Icon(Icons.calendar_today,size: 14,),
                                        border: OutlineInputBorder(
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(left: 8.0),
                                  child:custom_button_green(Search,"Search"),
                                ),
                                custom_Searchbutton(Export,"Export"),
                              ],
                            ),

                            Row(children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: _isChecked,
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          _isChecked = newValue;
                                        });
                                      },
                                    ),
                                    Text("Claim Your Shares",style: TextStyle(fontSize: 15),),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: _isChecked,
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          _isChecked = newValue;
                                        });
                                      },
                                    ),
                                    Text("Service Provider",style: TextStyle(fontSize: 15),),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: _isChecked,
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          _isChecked = newValue;
                                        });
                                      },
                                    ),
                                    Text("Invite And Refer",style: TextStyle(fontSize: 15),),
                                  ],
                                ),
                              ),

                              Expanded(
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: _isChecked1,
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          _isChecked1 = newValue;
                                        });
                                      },
                                    ),
                                    Text("Favourite",style: TextStyle(fontSize: 15),),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: _isChecked2,
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          _isChecked2 = newValue;
                                        });
                                      },
                                    ),
                                    Text("Profile",style: TextStyle(fontSize: 15),),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: _isChecked3,
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          _isChecked3 = newValue;
                                        });
                                      },
                                    ),
                                    Text("Portfolio",style: TextStyle(fontSize: 15),),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: _isChecked4,
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          _isChecked4 = newValue;
                                        });
                                      },
                                    ),
                                    Text("Notification",style: TextStyle(fontSize: 15),),
                                  ],
                                ),
                              ),


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
                                        DataColumn(label: Text('Id')),
                                        DataColumn(label: Text('User Name')),
                                        DataColumn(label: Text('Contact No.')),
                                        DataColumn(label: Text('Title')),
                                        DataColumn(label: Text('Type')),
                                        DataColumn(label: Text('Date')),
                                      ],
                                      rows: _pagedData.map((data) {
                                        return DataRow(
                                          cells: [
                                            DataCell(Text(data.id.toString())),
                                            DataCell(Text(data.name)),
                                            DataCell(Text(data.description)),
                                            DataCell(Text(data.name)),
                                            DataCell(Text(data.data)),
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
  DateTime selecteFromDate;
  DateTime selecteToDate;

  Future<void> _selectFromDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selecteFromDate)
      setState(() {
        selecteFromDate = picked;
      });
  }

  Future<void> _selectToDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selecteToDate)
      setState(() {
        selecteToDate = picked;
      });
  }
}

