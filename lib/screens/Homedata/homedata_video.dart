import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../utils/screen_size.dart';
import '../../widgets/appbar_bottombar.dart';
import '../../widgets/button.dart';
import '../../widgets/get_drawer.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';

class HomeDataVideos extends StatefulWidget {
  const HomeDataVideos({Key key}) : super(key: key);

  @override
  State<HomeDataVideos> createState() => _HomeDataVideosState();
}
class MyData {
  final int id;
  final String name;
  final String description;
  final String data;

  MyData({this.id, this.name, this.description, this.data});
}
class _HomeDataVideosState extends State<HomeDataVideos> {
  final _formKey = GlobalKey<FormState>();

  int _currentPage = 1;
  int _rowsPerPage = 10;
  List<MyData> _data = List.generate(100, (index) => MyData(id: index + 1, name: 'Name $index', description: 'Registrar $index', data:'user personal data  $index'));

  List<MyData> get _pagedData {
    final startIndex = (_currentPage - 1) * _rowsPerPage;
    final endIndex = startIndex + _rowsPerPage;
    return _data.sublist(startIndex, endIndex > _data.length ? _data.length : endIndex);
  }
  var _Values=[
    "Users","Leads","Premium","Test Group"
  ];
  var _selected;
  var videofrm_= false;
  var title_controller = TextEditingController();
  var url_controller = TextEditingController();
  var sequence_controller = TextEditingController();
  var description_controller = TextEditingController();

  void _pickFile() async{
    FilePickerResult result = await FilePicker.platform.pickFiles();
    if (result != null) {

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      // drawer: getDrawer(context),
      drawerEnableOpenDragGesture: false,
      drawerScrimColor: Colors.transparent,
      body: Row(
        children: [
          getDrawer(context),
          Expanded(
            child: Form(
              key: _formKey,
              child: Container(
                color: pageBackground,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0,left: 4.0, top: 8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.08,
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding:  EdgeInsets.only(left: 8.0),
                                child: Text("Videos", style: TextStyle(fontSize: 20,color: Colors.green),),
                              ),
                            ),
                            videofrm_? Container(
                              color: Colors.green,
                              child: TextButton(
                                child: const Text('Videos List',style: TextStyle(color: Colors.white),),
                                onPressed: () {setState(() {
                                  videofrm_=! videofrm_;
                                });
                                },
                              ),
                            ):
                            Container(
                              color: Colors.green,
                              child: TextButton(
                                child: const Text('Add',style: TextStyle(color: Colors.white),),
                                onPressed: () {setState(() {
                                  videofrm_=! videofrm_;
                                });
                                },
                              ),
                            ),
                          ],
                        ),
                        color: Colors.white,
                      ),
                    ),
                    videofrm_?Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 4.0,right: 8.0),
                      child: Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                            children:[
                              // const SizedBox(height: 10),
                              Padding (
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Container(alignment: Alignment.centerLeft,child: Text("Enter Title*",style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.bold,color: dark))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4,),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: custom_textField_withoutlabel(
                                          title_controller,
                                          "Enter Title",
                                          "Please Enter Title",
                                          Colors.black54,
                                          SizeConfig.blockSizeVertical*1.5,
                                          MediaQuery.of(context).size.width/2
                                      ),
                                    ),

                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Container(alignment: Alignment.centerLeft,child: Text("Enter URL*",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4,),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: custom_textField_withoutlabel(
                                          title_controller,
                                          "Enter URL",
                                          "Please Enter URL",
                                          Colors.black54,
                                          SizeConfig.blockSizeVertical*1.5,
                                          MediaQuery.of(context).size.width/2
                                      ),
                                    ),

                                    SizedBox(height: 15),
                                    Container(alignment: Alignment.centerLeft,child: Text("Select Categories*",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                                    SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          width: MediaQuery.of(context).size.width/2,
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
                                              hint: Text('Select Types',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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

                                    SizedBox(height: 15),
                                    Container(alignment: Alignment.centerLeft,child: Text("Type*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                    SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          width: MediaQuery.of(context).size.width/2,
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
                                              hint: Text('Choose Types',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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

                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Container(alignment: Alignment.centerLeft,child: Text("Enter Sequence*",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4,),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: custom_textField_withoutlabel(
                                          title_controller,
                                          "Enter Sequence",
                                          "Please Enter Sequence",
                                          Colors.black54,
                                          SizeConfig.blockSizeVertical*1.5,
                                          MediaQuery.of(context).size.width/2
                                      ),
                                    ),

                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Container(alignment: Alignment.centerLeft,child: Text("Choose file*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            alignment: Alignment.centerLeft,
                                            width: MediaQuery.of(context).size.width/2,
                                            height: MediaQuery.of(context).size.height/23,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5.0),
                                              border: Border.all(
                                                width: 0.40,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 4.0),
                                              child: ElevatedButton(onPressed: () {_pickFile();}, child: Text("Choose file")),
                                            )),
                                      ],
                                    ),

                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Container(alignment: Alignment.centerLeft,child: Text("Description*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4,),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: custom_largetextField_withlabel(
                                        description_controller,
                                        "Enter Description...",
                                        "Please Enter Description",
                                        Colors.black54,
                                        SizeConfig.blockSizeVertical*1.5,
                                        MediaQuery.of(context).size.width/2,
                                      ),),



                                  ],
                                ),
                              ),
                              Container(alignment: Alignment.centerLeft,child: custom_button(Save,"Save Data"),)
                            ]
                        ),
                      ),
                    ):
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: DataTable(
                                columns: [
                                  DataColumn(label: Text('Title')),
                                  DataColumn(label: Text('URL')),
                                  DataColumn(label: Text('Image')),
                                  DataColumn(label: Text('Sequence')),
                                  DataColumn(label: Text('Action')),
                                ],
                                rows: _pagedData.map((data) {
                                  return DataRow(
                                    cells: [
                                      DataCell(Text(data.id.toString())),
                                      DataCell(Text(data.name)),
                                      DataCell(Text(data.description)),
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
      log("message");
    }
  }
}

