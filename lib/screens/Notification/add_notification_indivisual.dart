import 'dart:developer';

import 'package:flutter/material.dart';

import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/get_drawer.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';

class AddNotificationindividual extends StatefulWidget {
  const AddNotificationindividual({Key key}) : super(key: key);

  @override
  State<AddNotificationindividual> createState() => _AddNotificationindividualState();
}

class _AddNotificationindividualState extends State<AddNotificationindividual> {
  static const int numItems = 10;
  List<bool> selected = List<bool>.generate(numItems, (int index) => false);

  final _formKey = GlobalKey<FormState>();
  var group_title_controller = TextEditingController();
  var group_city_controller = TextEditingController();
  var group_backoffice_controller = TextEditingController();
  var group_company_controller = TextEditingController();
  var group_cases_controller = TextEditingController();
  var group_plan_controller = TextEditingController();
  var grp_values=[
    "Users","Leads","Premium","Test Group"
  ];
  var _selectedValue;
  var message_title_controller = TextEditingController();
  var message_controller = TextEditingController();

  List<String> _Values = ['a','b','ds','2','4','5','6'];
  var _selected;

  bool value = false;

  final List<String> entries = <String>['bro1', 'bro2', 'bro3','bro4', 'bro5', 'bro6','bro7', 'bro8', 'bro9','bro10', 'bro11', 'bro12'];
  List<String> userChecked = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,backgroundColor: topnav,
        title:   Row(
          children: [
            Container(child: Image.asset("assets/images/1.png"),width: 140,),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(icon: Icon(Icons.mail, color: topicon,) , onPressed: () {},
                  ),
                  IconButton(icon: Icon(Icons.notifications, color: topicon,),padding:EdgeInsets.only(right: 20,left: 20), onPressed: () {},),
                  Stack(
                    children: [
                      IconButton(icon: Icon(Icons.flag, color: topicon,), onPressed: (){},),
                    ],
                  ),
                  TextButton(onPressed: (){}, child: Text("Jeevantika", style: TextStyle(color: Colors.white),))
                ],
              ),
            ),

          ],
        ),),
      // drawer: getDrawer(context),
      drawerEnableOpenDragGesture: false,
      drawerScrimColor: Colors.transparent,
      body: Row(
        children: [
          getDrawer(context),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: pageBackground,
                child: Padding(
                  padding: EdgeInsets.all(8),
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
                              Text("Add Notification Individual", style: TextStyle(fontSize: 20,color: Colors.green),),
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
                              Form(
                                key: _formKey,
                                child: Column(
                                    children:[
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 4.0),
                                                  child: Container(alignment: Alignment.centerLeft,child: Text("Message Title *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 4,),
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              child: custom_textField_withoutlabel(
                                                  message_title_controller,
                                                  "Enter Title",
                                                  "Please Enter Title",
                                                  Colors.black54,
                                                  SizeConfig.blockSizeVertical*1.5,
                                                  MediaQuery.of(context).size.width/3
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 4.0),
                                                  child: Container(alignment: Alignment.centerLeft,child: Text("Message*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 4,),
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              child: custom_largetextField_withlabel(
                                                message_controller,
                                                "Enter Message...",
                                                "Please Enter Message",
                                                Colors.black54,
                                                SizeConfig.blockSizeVertical*1.5,
                                                MediaQuery.of(context).size.width/3,
                                              ),),

                                            SizedBox(height: 14),
                                            Container(alignment: Alignment.centerLeft,child: Text("Select Screen to Open *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                            SizedBox(height: 5,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [

                                                Container(
                                                  width: MediaQuery.of(context).size.width/3,
                                                  height: MediaQuery.of(context).size.height/23,
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
                                                      hint: Text('Select Screens',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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

                                          ],
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                              SizedBox(height: 14),
                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(height: 10,width: 12,),
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
                                    SizedBox(height: 10,width: 12,),
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
                                    SizedBox(height: 10,width: 12,),
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

                                    SizedBox(height: 10,width: 12,),
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
                                    SizedBox(height: 10,width: 12,),
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
                                    ), SizedBox(height: 10,width: 12,),
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
                                    SizedBox(height: 10,width: 12,),
                                    custom_textField_withlabel4(
                                        group_title_controller,
                                        "Enter Name",
                                        "Name",
                                        Colors.black54,
                                        SizeConfig.blockSizeVertical*1.5,
                                        MediaQuery.of(context).size.width/8.9
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 12,),
                              Row(
                                children: [

                                  SizedBox(height: 10,width: 12,),
                                  custom_textField_withlabel4(
                                      group_title_controller,
                                      "Enter Phone No.",
                                      "Phone No.",
                                      Colors.black54,
                                      SizeConfig.blockSizeVertical*1.5,
                                      MediaQuery.of(context).size.width/8.9
                                  ),
                                  custom_Searchbutton(Save,"Search"),
                                ],
                              ) ,



                            ],
                          ),
                        ),
                      ),

                      Container(
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

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child:Row(mainAxisAlignment: MainAxisAlignment.end,children: [custom_button(Save,"Send Notification")],),
      ),
    );

  }

  Save(){
    if (_formKey.currentState.validate()) {
      log("message");
    }
  }

  OnSelect(newValue) {
    return setState(() {
      _selected = newValue;
    });
  }

  values(){
    _Values.map((item) {
      return DropdownMenuItem(
        child: new Text(item),
        value: item,
      );
    }).toList();
  }
}