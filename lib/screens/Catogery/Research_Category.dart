import 'dart:developer';
import 'package:flutter/material.dart';
import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';

class ResearchCategories extends StatefulWidget {
  const ResearchCategories({Key key}) : super(key: key);

  @override
  State<ResearchCategories> createState() => _ResearchCategoriesState();
}
class MyData {
  final int id;
  final String name;
  final String description;
  final String data;

  MyData({this.id, this.name, this.description, this.data});
}
class _ResearchCategoriesState extends State<ResearchCategories> {

  final _formKey = GlobalKey<FormState>();
  int _currentPage = 1;
  int _rowsPerPage = 10;
  List<MyData> _data = List.generate(100, (index) => MyData(id: index + 1, name: 'Name $index', description: 'Registrar $index', data:'user personal data  $index'));

  List<MyData> get _pagedData {
    final startIndex = (_currentPage - 1) * _rowsPerPage;
    final endIndex = startIndex + _rowsPerPage;
    return _data.sublist(startIndex, endIndex > _data.length ? _data.length : endIndex);
  }

  var message_title_controller = TextEditingController();
  var message_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                  child: Padding(
                    padding:  EdgeInsets.only(left: 8.0),
                    child: Text("Research Categories", style: TextStyle(fontSize: 20,color: Colors.green),),
                  ),
                  color: Colors.white,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 4.0, top: 4.0,right: 4.0),
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      children:[
                        SizedBox(height: 14,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(alignment: Alignment.centerLeft,child: Text("Category Name *",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                            ),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0,bottom: 10),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: custom_textField_withoutlabel(
                                    message_title_controller,
                                    "Enter Category",
                                    "Please Enter Category Name",
                                    Colors.black54,
                                    SizeConfig.blockSizeVertical*1.5,
                                    MediaQuery.of(context).size.width/2
                                ), ),
                            ),
                            Container(width:MediaQuery.of(context).size.width/3,alignment: Alignment.centerRight,child: custom_button(Save,"Add Categories"),)
                          ],
                        ),


                      ]
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
                          DataColumn(label: Text('Categories Name')),
                          DataColumn(label: Text('Action')),
                        ],
                        rows: _pagedData.map((data) {
                          return DataRow(
                            cells: [
                              DataCell(Text(data.id.toString())),
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
        ),
      ),
    );
  }

  Save(){
    if (_formKey.currentState.validate()) {
      log("message");
    }
  }
}
