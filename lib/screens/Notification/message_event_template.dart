import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:intl/intl.dart';
import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/get_drawer.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';

class NotificationTemplate extends StatefulWidget {
  const NotificationTemplate({Key key}) : super(key: key);

  @override
  State<NotificationTemplate> createState() => _NotificationTemplateState();
}
class MyData {
  final int id;
  final String name;
  final String description;
  final String data;

  MyData({this.id, this.name, this.description, this.data});
}
class _NotificationTemplateState extends State<NotificationTemplate> {

  final _formKey = GlobalKey<FormState>();

  List<String> _Values = ['a','b'];
  var _selected;
  var message_controller = TextEditingController();
  var message_title_controller = TextEditingController();
  var message_duration_controller = TextEditingController();
  bool value = false;


  int _currentPage = 1;
  int _rowsPerPage = 10;
  List<MyData> _data = List.generate(100, (index) => MyData(id: index + 1, name: 'Name $index', description: 'Registrar $index', data:'user personal data  $index'));

  List<MyData> get _pagedData {
    final startIndex = (_currentPage - 1) * _rowsPerPage;
    final endIndex = startIndex + _rowsPerPage;
    return _data.sublist(startIndex, endIndex > _data.length ? _data.length : endIndex);
  }
  String cdate = DateFormat("yyyy-MM-dd").format(DateTime.now());

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
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar:  PreferredSize(
                  preferredSize: Size.fromHeight(kToolbarHeight),
                  child:  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                    child: Container(
                      color: Colors.white,
                      child: Container(height: MediaQuery.of(context).size.height*0.04,width: MediaQuery.of(context).size.width/2,
                        child: TabBar(
                          unselectedLabelColor: Colors.green,
                          labelColor: Colors.white,
                          indicatorColor: Colors.green,
                          indicatorWeight: 2,
                          indicator: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(5)),
                          tabs: [
                            Container(
                                child: Text("Add Event Message",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 1),)),
                            Padding(
                              padding:  EdgeInsets.only(left: 5),
                              child: Container(
                                  child: Text("Event Message List",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 1),)),
                            )],
                        ),
                      ),
                    ),
                  ),
                ),
                body:  TabBarView(
                  children: <Widget>[
                    Column( mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(padding: EdgeInsets.only(top: 5), height: MediaQuery.of(context).size.height*0.82,
                            child: Container(
                              color: pageBackground,
                              child: Column(
                                children: [
                                  Form(
                                    key: _formKey,
                                    child: Container(
                                      color: pageBackground,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 4.0,left: 4.0, top: 4.0),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: MediaQuery.of(context).size.height*0.08,
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding:  EdgeInsets.only(left: 8.0),
                                                child: Text("Add Event Massage", style: TextStyle(fontSize: 20,color: Colors.green),),
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

                                                    Padding(
                                                      padding: const EdgeInsets.all(10.0),
                                                      child: Column(
                                                        children: [
                                                          Container(alignment: Alignment.centerLeft,child: Text("Event*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
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
                                                                    hint: Text('Select Event Name',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
                                                          Container(
                                                            alignment: Alignment.centerLeft,
                                                            child: custom_textField_withlabel3(
                                                              message_title_controller,
                                                              "Enter Message Title",
                                                              "Title *",
                                                              "Please Enter Title",
                                                              Colors.black54,
                                                              SizeConfig.blockSizeVertical*1.5,
                                                              MediaQuery.of(context).size.width/2,
                                                            ),),

                                                          SizedBox(height: 15,),
                                                          Container(
                                                            alignment: Alignment.centerLeft,
                                                            child: custom_textField_withlabel3(
                                                                message_duration_controller,
                                                                "Enter Event id",
                                                                "Event Id *",
                                                                "Please Enter Event id",
                                                                Colors.black54,
                                                                SizeConfig.blockSizeVertical*1.5,
                                                                MediaQuery.of(context).size.width/2
                                                            ),
                                                          ),
                                                          SizedBox(height: 14),
                                                          Container(alignment: Alignment.centerLeft,child: Text("Select Screen to Open*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
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
                                                                    hint: Text('Select Screen',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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
                                                          SizedBox(height: 14),
                                                          Container(alignment: Alignment.centerLeft,child: Text("Message*",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: dark))),
                                                          SizedBox(height: 5,),
                                                          Container(
                                                            alignment: Alignment.centerLeft,
                                                            child: custom_largetextField_withlabel(
                                                              message_controller,
                                                              "Enter Message...",
                                                              "Please Enter Message",
                                                              Colors.black54,
                                                              SizeConfig.blockSizeVertical*1.5,
                                                              MediaQuery.of(context).size.width/2,
                                                            ),),

                                                        ],
                                                      ),
                                                    ),
                                                    Container(alignment: Alignment.centerLeft,child: custom_button(Save,"Add Message"),)
                                                  ]
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(padding: EdgeInsets.only(top: 5), height: MediaQuery.of(context).size.height*0.83,color: pageBackground,
                          child:  Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height*0.08,
                                width: MediaQuery.of(context).size.width,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:  EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      Text("Event Message list", style: TextStyle(fontSize: 22,color: Colors.green),),
                                    ],
                                  ),
                                ),
                                color: Colors.white,
                              ),
                            SizedBox(height: 2,),
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
                          DataColumn(label: Text('Event Name')),
                          DataColumn(label: Text('Title')),
                          DataColumn(label: Text('Message')),
                          DataColumn(label: Text('Screen to open')),
                          DataColumn(label: Text('Message')),
                          DataColumn(label: Text('Action')),
                        ],
                        rows: _pagedData.map((data) {
                          return DataRow(
                            cells: [
                              DataCell(Text(data.id.toString())),
                              DataCell(Text(data.name)),
                              DataCell(Text(data.description)),
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
                            ],
                          ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Save(){
    if (_formKey.currentState.validate()) {
      log("message");
    }
  }
  void _onSelected(bool selected, String dataName) {
    if (selected == true) {
      setState(() {
        userChecked.add(dataName);
      });
    } else {
      setState(() {
        userChecked.remove(dataName);
      });
    }}

}