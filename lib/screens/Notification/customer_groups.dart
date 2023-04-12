import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../utils/screen_size.dart';
import '../../widgets/appbar_bottombar.dart';
import '../../widgets/button.dart';
import '../../widgets/get_drawer.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';

class CustomerGroups extends StatefulWidget {
  const CustomerGroups({Key key}) : super(key: key);

  @override
  State<CustomerGroups> createState() => _CustomerGroupsState();
}

int _currentPage = 1;
int _rowsPerPage = 10;

const int numItems = 10;
List<bool> selected = List<bool>.generate(numItems, (int index) => false);

final _formKey = GlobalKey<FormState>();
var group_title_controller = TextEditingController();
var group_city_controller = TextEditingController();
var group_backoffice_controller = TextEditingController();
var group_company_controller = TextEditingController();
var group_cases_controller = TextEditingController();
var group_plan_controller = TextEditingController();

List<String> _Values = ['a','b'];
var _selected;

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
class _CustomerGroupsState extends State<CustomerGroups> {
  List Customer_group=[
    AddCustomerGroup(),
    GetCustomerGroup()
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
                          ),width: SizeConfig.screenWidth/8,child: Center(child: Text("Add Customer Group",style: TextStyle(color: Current_index==0?Colors.white: Colors.black) )),),
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
                          ),width: SizeConfig.screenWidth/8,child: Center(child: Text("Get customer group",style: TextStyle(color: Current_index==1?Colors.white: Colors.black ,),)),),
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

class AddCustomerGroup extends StatefulWidget {
  const AddCustomerGroup({Key key}) : super(key: key);

  @override
  State<AddCustomerGroup> createState() => _AddCustomerGroupState();
}

class _AddCustomerGroupState extends State<AddCustomerGroup> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: pageBackground,
      child: Padding(
        padding: EdgeInsets.all(4),
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
                    Text("Add Customer Group", style: TextStyle(fontSize: 20,color: Colors.green),),
                  ],
                ),
              ),
              color: Colors.white,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [

                    SizedBox(height: 15),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Container(alignment: Alignment.centerLeft,child: Text("Group Title*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height/16,
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.centerLeft,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: custom_textField_withoutlabel(
                              group_title_controller,
                              "Enter Group Title",
                              "Please Enter Group Title",
                              Colors.black54,
                              SizeConfig.blockSizeVertical*1.5,
                              MediaQuery.of(context).size.width/4.3
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 14,),
                    Container(alignment: Alignment.centerLeft,child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("Select Customer Groups",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark)),
                    )),
                    SizedBox(height: 4,),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Container(
                            width: 180,
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
                                hint: Text('Select State',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                                items: _Values.map((item) {
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
                          Container(
                            width: 180,
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
                                hint: Text('Select City',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                                items: _Values.map((item) {
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
                          Container(
                            width: 180,
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
                                hint: Text('Select Backoffice',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                                items: _Values.map((item) {
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
                          Container(
                            width: 180,
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
                                hint: Text('Select Company',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                                items: _Values.map((item) {
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
                          Container(
                            width: 180,
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
                                hint: Text('Select Cases',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                                items: _Values.map((item) {
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
                          ), SizedBox(height: 10,width: 10,),
                          Container(
                            width: 180,
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
                                hint: Text('Select Plan',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                                items: _Values.map((item) {
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

                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(height: 10,width: 10,),
                        Container(child: custom_textField_withlabel4(
                            group_title_controller,
                            "Enter Name",
                            "Name",
                            Colors.black54,
                            SizeConfig.blockSizeVertical*1.5,
                            MediaQuery.of(context).size.width/8.9
                        ),),
                        SizedBox(height: 10,width: 10,),
                        Container(child: custom_textField_withlabel4(
                            group_title_controller,
                            "Enter Phone No.",
                            "Phone No.",
                            Colors.black54,
                            SizeConfig.blockSizeVertical*1.5,
                            MediaQuery.of(context).size.width/8.9
                        ),),
                        custom_Searchbutton(Save,"Search"),
                      ],
                    ) ,

                    // Padding(
                    //   padding: const EdgeInsets.only(left: 8.0),
                    //   child: Container(
                    //     child: Row(
                    //       children: [
                    //         Builder(
                    //             builder: (context) {
                    //               return Checkbox(
                    //                 value: userChecked.contains(entries),
                    //                 onChanged: (val) {
                    //                   if (value == true) {
                    //                     setState(() {
                    //                       userChecked.addAll(entries);
                    //                     });
                    //                   } else {
                    //                     setState(() {
                    //                       userChecked.remove(entries);
                    //                     });
                    //                   }
                    //                 },
                    //               );
                    //             }
                    //         ),
                    //         Text("Select All"),
                    //       ],
                    //     ),
                    //   ),
                    // ),


                  ],
                ),
              ),
            ),

            Expanded(
              flex: 3 ,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  color: Colors.white,
                  child: SizedBox(
                    width: double.infinity,
                    child: DataTable(
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Text('Select All'),
                        ),
                      ],
                      rows: List<DataRow>.generate(
                        numItems,
                            (int index) => DataRow(
                          color: MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                // All rows will have the same selected color.
                                if (states.contains(MaterialState.selected)) {
                                  return Theme.of(context).colorScheme.primary.withOpacity(0.08);
                                }
                                // Even rows will have a grey color.
                                if (index.isEven) {
                                  return Colors.white;
                                }
                                return null; // Use default value for other states and odd rows.
                              }),
                          cells: <DataCell>[DataCell(Row(
                            children: [
                              Text ('Name : ', style: TextStyle(fontWeight: FontWeight.bold),),
                              Text ('Name $index'),

                            ],
                          ))],
                          selected: selected[index],
                          onSelectChanged: (bool value) {
                            setState(() {
                              selected[index] = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Container(
              //     width: MediaQuery.of(context).size.width,
              //     color: Colors.white,
              //     child: ListView.builder(
              //         padding: const EdgeInsets.all(8),
              //         itemCount: entries.length,
              //         itemBuilder: (BuildContext context, int index) {
              //           return Column(
              //             children: [
              //               Container(
              //                 height: 70,
              //                 decoration: BoxDecoration(
              //                     border: Border.all(color: dullwhite)
              //                 ),
              //                 child: Row(children: [Checkbox(
              //                   value: userChecked.contains(entries[index]),
              //                   onChanged: (val) {
              //                     _onSelected(val!, entries[index]);
              //                   },
              //                 ),
              //
              //                   Container(width:MediaQuery.of(context).size.width/2.8,child: Text("Name : ${entries[index]}",style: TextStyle(fontWeight: FontWeight.bold),)),
              //                   Container(child: Text("Phone No. :"),)],),
              //               ),
              //             ],
              //           );
              //         }
              //     ),
              //   ),
              // ),
            ),
            Container(
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(right: 90.0),
                child: custom_button(Save,"Add Groups"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GetCustomerGroup extends StatefulWidget {
  const GetCustomerGroup({Key key}) : super(key: key);

  @override
  State<GetCustomerGroup> createState() => _GetCustomerGroupState();
}

class _GetCustomerGroupState extends State<GetCustomerGroup> {
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
                  Text("Add Customer Group", style: TextStyle(fontSize: 22,color: Colors.green),),
                ],
              ),
            ),
            color: Colors.white,
          ),
          SizedBox(height: 4,),
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
                      DataColumn(label: Text('Group Title')),
                      DataColumn(label: Text('Date')),
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