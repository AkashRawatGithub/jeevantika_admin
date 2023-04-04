import 'package:flutter/material.dart';
import '../../widgets/button.dart';
import '../../widgets/style/style.dart';

class LiasoningList extends StatefulWidget {
  const LiasoningList({Key key}) : super(key: key);

  @override
  State<LiasoningList> createState() => _LiasoningListState();
}

var dynamicForm_ = false;
var _selected;
List<String> _Values = ['a','b','ds','2','4','5','6'];
var sendCompany_= false;
Set<String> _selectedOptions = Set<String>();
List<String> _options = ['Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 5'];
class _LiasoningListState extends State<LiasoningList> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageBackground,
      child: sendCompany_ == false ? Column(
        children: [
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.08,
            width: MediaQuery
                .of(context)
                .size
                .width,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Liasoning List",
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
            ),
            color: Colors.white,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Table(
                columnWidths: {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(2),
                  2: FlexColumnWidth(6),
                  3: FlexColumnWidth(3),
                  5: FlexColumnWidth(2),
                },
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Container(child: Text(
                        'S.No.', style: TextStyle(fontWeight: FontWeight.bold)),
                      alignment: Alignment.center,
                      height: 50,),
                    Container(child: Text('Liasoning Name',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                      alignment: Alignment.center,
                      height: 50,),
                    Container(child: Text('Liasoning Address',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                      alignment: Alignment.center,
                      height: 50,),
                    Container(child: Text(
                        'Email', style: TextStyle(fontWeight: FontWeight.bold)),
                      alignment: Alignment.center,
                      height: 50,),
                    Container(child: Text(
                        'Phone No.', style: TextStyle(fontWeight: FontWeight
                        .bold)), alignment: Alignment.center, height: 50,),
                    Container(child: Text(
                        'Action', style: TextStyle(fontWeight: FontWeight
                        .bold)), alignment: Alignment.center, height: 50,)
                  ]),
                  TableRow(children: [
                    Container(
                        child: Text('1', style: TextStyle(fontWeight: FontWeight
                            .bold)), alignment: Alignment.center),
                    Container(
                        child: Text(' ', style: TextStyle(fontWeight: FontWeight
                            .bold)), alignment: Alignment.center),
                    Container(
                        child: Text(' ', style: TextStyle(fontWeight: FontWeight
                            .bold)), alignment: Alignment.center),
                    Container(
                        child: Text(' ', style: TextStyle(fontWeight: FontWeight
                            .bold)), alignment: Alignment.center),
                    Container(
                        child: Text(' ', style: TextStyle(fontWeight: FontWeight
                            .bold)), alignment: Alignment.center),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 4.0, top: 4, bottom: 4),
                                child: Container(
                                  decoration: BoxDecoration(color: EditBtn,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: GestureDetector(
                                      child: TextButton(onPressed: () {
                                        setState(() {
                                          sendCompany_ = !sendCompany_;
                                        });
                                      },
                                          child: Text("Send Company",
                                            style: TextStyle(
                                                color: Colors.white),))),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ), alignment: Alignment.center,
                    ),
                  ]),
                ],
              ),
            ),
          )
        ],
      ) :
      Container(
        color: pageBackground,
        child: Column(
          children: [
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.08,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Name",
                  style: TextStyle(fontSize: 20, color: Colors.green),
                ),
              ),
              color: Colors.white,
            ),


            SizedBox(height: 4,),
            Column(children:_childrenList(),),
            // Container(
            //   color: Colors.white,
            //   height: MediaQuery
            //       .of(context)
            //       .size
            //       .height / 10,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 15.0, top: 10),
            //     child: Row(
            //       children: [
            //
            //         Container(width: 110,
            //             alignment: Alignment.centerLeft,
            //             child: Text("Select Registrar for Send *",
            //                 style: TextStyle(fontSize: 15,
            //                     fontWeight: FontWeight.bold,
            //                     color: dark))),
            //         SizedBox(height: MediaQuery
            //             .of(context)
            //             .size
            //             .height * 0.01,),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             Container(
            //               width: MediaQuery
            //                   .of(context)
            //                   .size
            //                   .width / 5,
            //               height: MediaQuery
            //                   .of(context)
            //                   .size
            //                   .height / 23,
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(5.0),
            //                 border: Border.all(width: 0.40),
            //               ),
            //               child: DropdownButtonHideUnderline(
            //                 child: DropdownButton2(
            //                   hint: Text('-- Select Registrar --',
            //                     style: TextStyle(fontSize: 14, color: dark),),
            //                   value: _selectedValue,
            //                   onChanged: (newValue) {
            //                     setState(() {
            //                       _selectedValue = newValue;
            //                     });
            //                   },
            //                   items: _values.map((group) {
            //                     return DropdownMenuItem(
            //                       child: new Text(group),
            //                       value: group,
            //                     );
            //                   }).toList(),
            //                 ),),
            //             ),
            //           ],
            //         ),
            //
            //
            //         SizedBox(width: 30,),
            //         Container(width: 110,
            //             alignment: Alignment.centerLeft,
            //             child: Text("Select Company for Send *", style: TextStyle(
            //                 fontSize: 15,
            //                 fontWeight: FontWeight.bold,
            //                 color: dark))),
            //         SizedBox(height: MediaQuery
            //             .of(context)
            //             .size
            //             .height * 0.01,),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             Container(
            //               width: MediaQuery.of(context).size.width / 5,
            //               height: MediaQuery.of(context).size.height / 23,
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(5.0),
            //                 border: Border.all(width: 0.40),
            //               ),
            //               child: DropdownButtonHideUnderline(
            //                 child: DropdownButton2(
            //                   hint: Text('-- Select Company --',
            //                     style: TextStyle(fontSize: 14, color: dark),),
            //                   value: _selectedValue,
            //                   onChanged: (newValue) {
            //                     setState(() {
            //                       _selectedValue = newValue;
            //                     });
            //                   },
            //                   items: _values.map((company) {
            //                     return DropdownMenuItem(
            //                       child: new Text(company),
            //                       value: company,
            //                     );
            //                   }).toList(),
            //                 ),),
            //             ),
            //           ],
            //         ),
            //
            //
            //
            //
            //
            //
            //       ],
            //     ),
            //   ),
            // ),

            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(right: 58.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (containerList.length==1) Container() else Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(width: 30, height: 30,
                        child: FloatingActionButton(
                          // shape: BeveledRectangleBorder( borderRadius: BorderRadius.zero ),
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.remove, size: 15, color: Colors.white,),
                          onPressed: () {
                            setState(() {popContainer();});
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(width: 30, height: 30,
                        child: FloatingActionButton(
                          // shape: BeveledRectangleBorder( borderRadius: BorderRadius.zero ),
                          backgroundColor: Colors.green,
                          child: Icon(Icons.add, size: 15, color: Colors.white,),
                          onPressed: () {
                            setState(() {
                              addContainer();
                            });
                          },
                        ),
                      ),
                    ),
                    custom_Newbutton(Save, Colors.green, "Save Data")

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }


  Save() {
  }

  List<Widget> containerList = [
    const createNewContainer(),
  ];

  // Add
  void addContainer() {
    containerList.add(createNewContainer());
  }

  // _childrenList
  List<Widget> _childrenList() {
    return containerList;
  }
  void popContainer() {
    containerList.removeLast();
  }

}



class createNewContainer extends StatefulWidget {
  const createNewContainer({Key key}) : super(key: key);

  @override
  State<createNewContainer> createState() => _createNewContainerState();
}

class _createNewContainerState extends State<createNewContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 10),
        child: Row(
          children: [
            Container(width: 110,
                alignment: Alignment.centerLeft,
                child: Text("Select Registrar for Send *",
                    style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: dark))),
            SizedBox(height: MediaQuery
                .of(context)
                .size
                .height * 0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/5,
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
                      hint: Text('Select Registrar',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
            SizedBox(width: 30,),
            Container(width: 110,
                alignment: Alignment.centerLeft,
                child: Text("Select Company for Send *", style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: dark))),
            SizedBox(height: MediaQuery
                .of(context)
                .size
                .height * 0.01,),
            Container(
              width: MediaQuery.of(context).size.width/5,
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
                  hint: Text('--Select Company--',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
            
            
            DropdownButton(
              hint: Text('Please select options'),
              items: _options.map((String option) {
              return DropdownMenuItem(
                value: option,
                child: Text(option),
              );
            }).toList(),
              onChanged: (String selectedOption) {
                setState(() {
                  if (_selectedOptions.contains(selectedOption)) {
                    _selectedOptions.remove(selectedOption);
                  } else {
                    _selectedOptions.add(selectedOption);
                  }
                });
              },)
        ],
        ),
      ),
    );

  }



  List<Widget> containerList = [
    const createNewContainer(),
  ];

  // Add
  void addContainer() {
    containerList.add(createNewContainer());
  }

  // Pop
  void popContainer() {
    containerList.remove(createNewContainer());
  }
}
