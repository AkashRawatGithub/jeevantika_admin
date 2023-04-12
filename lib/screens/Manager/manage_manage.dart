import 'package:decorated_icon/decorated_icon.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

import '../../utils/screen_size.dart';
import '../../widgets/button.dart';
import '../../widgets/get_drawer.dart';
import '../../widgets/text_field.dart';

class Manage_Manager extends StatefulWidget {
  const Manage_Manager({Key key}) : super(key: key);

  @override
  State<Manage_Manager> createState() => _Manage_Manager_patnerState();
}

class _Manage_Manager_patnerState extends State<Manage_Manager> {
  var name_controller = TextEditingController();
  var email_controller = TextEditingController();
  var address_controller = TextEditingController();
  var contect_controller = TextEditingController();
  var grp_values=[
    "Users","Leads","Premium","Test Group"
  ];List<bool> is_expanded = [];
  List Lst_ty = ["Users","Leads","Premium","Leads","Premium","Leads","Premium","Test Group"];
  List<String> _Values = ['a','b','ds','2','4','5','6'];
  bool block = false ;
  List business_partner_name = [
    {"name": "asd","contact":"8502009146"},
    {"name": "holder ?*","contact":"8502009140"},
    {"name": "recent past ?*","contact":"8502009142"},
    {"name":"Certificate ?*","contact":"8502009144"},
    {"name":"Death Certificate ?*","contact":"8502009143"},
    {"name":"share certificate(s) ?*","contact":"8502009141"},
    {"name": "share","contact":"8502009146"},
    {"name": "certificate(s) ?*","contact":"8502009148"},
    {"name": "share certificate","contact":"8502009144"},
    {"name":"company","contact":"8502009145"}
  ];
  var _selected;
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
            child: Container(
              color: pageBackground,
              child:Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.07,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Text("Manage Manager ",style: TextStyle(fontSize: 22,color: Colors.green.shade600),),
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                //form create list search
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(height: 10,width: 10,),
                                      Container(child: custom_textField_withlabel4(
                                          name_controller,
                                          "Enter Name",
                                          "Name",
                                          Colors.black54,
                                          13,
                                          MediaQuery.of(context).size.width/7.0
                                      ),),
                                      SizedBox(height: 10,width: 10,),
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.15,
                                        height: 25,
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
                                      Container(child: custom_textField_withlabel4(
                                          address_controller,
                                          "Enter Address",
                                          "Address",
                                          Colors.black54,
                                          13,
                                          MediaQuery.of(context).size.width/6.9
                                      ),),
                                      SizedBox(height: 10,width: 10,),
                                      Container(child: custom_textField_withlabel4(
                                          email_controller,
                                          "Enter Email",
                                          "Email",
                                          Colors.black54,
                                          13,
                                          MediaQuery.of(context).size.width/8.1
                                      ),),
                                      SizedBox(height: 10,width: 10,),
                                      Container(child: custom_textField_withlabel4(
                                          contect_controller,
                                          "Enter Phone No.",
                                          "Phone No.",
                                          Colors.black54,
                                          13,
                                          MediaQuery.of(context).size.width/8.9
                                      ),),
                                      SizedBox(width: 5,),
                                      Container(
                                        child: custom_regisbutton(Save,"Search"),
                                      )
                                    ],
                                  ),
                                ),
                                Divider(),
                                //  Page List
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding:EdgeInsets.symmetric(horizontal: 5),
                                        child: ListView.builder(
                                            scrollDirection: Axis.vertical,
                                            shrinkWrap: true,
                                            itemCount: business_partner_name.length,
                                            itemBuilder: (itemBuilder,index){
                                              return InkWell(
                                                onTap:() async {
                                                  setState(() {});
                                                },
                                                child: Padding( padding:  EdgeInsets.only(top: 5),
                                                  child: Card(
                                                    color: Colors.grey.shade50,
                                                    child: Container(
                                                      height: MediaQuery.of(context).size.height*0.1,
                                                      child: Padding(padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                                                        child: Row(children: [
                                                          Expanded(
                                                            child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                SizedBox(height: 3,),
                                                                Row(children: [
                                                                  Container(child: Text(business_partner_name[index]["name"],style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.w700),textAlign: TextAlign.left),),
                                                                  SizedBox(width: 15,),
                                                                  Container(
                                                                    padding: EdgeInsets.all(3),
                                                                    decoration: BoxDecoration(border: Border.all(color: Colors.black54,width: 1.5),borderRadius: BorderRadius.circular(4)),
                                                                    child: Text(business_partner_name[index]["contact"],style: TextStyle(fontSize:13,fontWeight: FontWeight.w600),textAlign: TextAlign.left),
                                                                  ),
                                                                ],),
                                                                SizedBox(height: 10,),
                                                                Container(child:RichText(
                                                                  text: TextSpan(style:  TextStyle(fontSize: 12.0,color: Colors.black,),
                                                                    children: <TextSpan>[
                                                                      TextSpan(text: 'Email Id :-  ', style:  TextStyle(fontWeight: FontWeight.bold)),
                                                                      TextSpan(text:" "+ business_partner_name[index]["name"]),
                                                                    ],
                                                                  ),)
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Center(
                                                              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                Text("State" +" "+" ,",style: TextStyle(fontSize:SizeConfig.blockSizeVertical*1.5,fontWeight: FontWeight.w600),textAlign: TextAlign.left),
                                                                SizedBox(width: 10),
                                                                Text(""+"City",style: TextStyle(fontSize:SizeConfig.blockSizeVertical*1.5,fontWeight: FontWeight.w600),textAlign: TextAlign.left),
                                                              ],),
                                                            ),
                                                          ),
                                                          Expanded(
                                                              child: Padding(padding: EdgeInsets.only(top: 2),
                                                                child: Container(alignment: Alignment.centerRight,padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                      GestureDetector(
                                                                        onTap: () {
                                                                          setState(() {
                                                                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Deleted")));
                                                                          });
                                                                        },
                                                                        child: Tooltip(message: "Edit",
                                                                          child: Container(decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(3)),
                                                                            padding: EdgeInsets.all(4),
                                                                            child: DecoratedIcon(
                                                                              Icons.edit_sharp,
                                                                              color: Colors.white,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      SizedBox(width: 10,),
                                                                      GestureDetector(
                                                                        onTap: () {
                                                                          setState(() {
                                                                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Deleted")));
                                                                          });
                                                                        },
                                                                        child: Tooltip(message: "Log In",
                                                                          child: Container(decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(3)),
                                                                            padding: EdgeInsets.all(4),
                                                                            child: DecoratedIcon(
                                                                              Icons.logout_rounded,
                                                                              color: Colors.white,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      SizedBox(width: 10,),
                                                                      GestureDetector(
                                                                        onTap: () {
                                                                          setState(() {
                                                                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Deleted 2")));
                                                                          });
                                                                        },
                                                                        child: Tooltip(message: "Delete",
                                                                          child: Container(decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(3)),
                                                                            padding: EdgeInsets.all(4),
                                                                            child: DecoratedIcon(
                                                                              Icons.delete_outline_outlined,
                                                                              color: Colors.white,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      SizedBox(width: 10,),
                                                                      GestureDetector(
                                                                        onTap: () {
                                                                          setState(() {
                                                                            block = !block;
                                                                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Deleted 2")));
                                                                          });
                                                                        },
                                                                        child: Tooltip(message: block?"Block":"UnBlock",
                                                                          child: Container(decoration: BoxDecoration(color:!block?Colors.orangeAccent:Colors.pink,borderRadius: BorderRadius.circular(3)),
                                                                            padding: EdgeInsets.all(4),
                                                                            child: DecoratedIcon(
                                                                              block?Icons.lock_open_outlined:Icons.lock_outline,
                                                                              color: Colors.white,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      // Column(children: [
                                                                      //   GestureDetector(
                                                                      //     onTap: () {
                                                                      //       setState(() {
                                                                      //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Deleted 2")));
                                                                      //       });
                                                                      //     },
                                                                      //     child: Tooltip(message: "Delete",
                                                                      //       child: Container(decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(3)),
                                                                      //         padding: EdgeInsets.all(3),
                                                                      //         child: DecoratedIcon(
                                                                      //           Icons.delete_outline_outlined,
                                                                      //           color: Colors.white,
                                                                      //           size: 18.0,
                                                                      //         ),
                                                                      //       ),
                                                                      //     ),
                                                                      //   ),
                                                                      //   SizedBox(height: 5,),
                                                                      //   GestureDetector(
                                                                      //     onTap: () {
                                                                      //       setState(() {
                                                                      //         block = !block;
                                                                      //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Deleted 2")));
                                                                      //       });
                                                                      //     },
                                                                      //     child: Tooltip(message: block?"Block":"UnBlock",
                                                                      //       child: Container(decoration: BoxDecoration(color:!block?Colors.orangeAccent:Colors.pink,borderRadius: BorderRadius.circular(3)),
                                                                      //         padding: EdgeInsets.all(3),
                                                                      //         child: DecoratedIcon(
                                                                      //           block?Icons.lock_open_outlined:Icons.lock_outline,
                                                                      //           color: Colors.white,
                                                                      //           size: 18.0,
                                                                      //         ),
                                                                      //       ),
                                                                      //     ),
                                                                      //   ),
                                                                      // ],),
                                                                    ],),
                                                                ),
                                                              )
                                                          )
                                                        ],),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );}
                                        ),
                                      ),

                                      SizedBox(height: MediaQuery.of(context).size.height*0.04,),

                                      // Container(
                                      //   child: ExpansionTile(
                                      //     title: Text('ExpansionTile 1'),
                                      //     children: <Widget>[
                                      //       ListTile(title: Text('This is tile number 1')),
                                      //     ],
                                      //   ),
                                      // ),
                                      // SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                      // ExpansionTile(
                                      //   title: Text('ExpansionTile 1'),
                                      //   children: <Widget>[
                                      //     Container(
                                      //       child: Text("vjdfvj"),
                                      //     ),
                                      //   ],
                                      // ),
                                      // SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                      // Container(
                                      //   child: ExpansionTile(
                                      //     title: Text('ExpansionTile 1'),
                                      //     children: <Widget>[
                                      //       ListTile(title: Text('This is tile number 1')),
                                      //     ],
                                      //   ),
                                      // ),
                                      // SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                      // Container(
                                      //   child: ExpansionTile(
                                      //     title: Text('ExpansionTile 1'),
                                      //     children: <Widget>[
                                      //       ListTile(title: Text('This is tile number 1')),
                                      //     ],
                                      //   ),
                                      // ),
                                      // SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                      // Container(
                                      //   child: ExpansionTile(
                                      //     title: Text('ExpansionTile 1'),
                                      //     children: <Widget>[
                                      //       ListTile(title: Text('This is tile number 1')),
                                      //     ],
                                      //   ),
                                      // ),
                                      // SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                      // Container(
                                      //   foregroundDecoration: BoxDecoration(border: Border.all()),
                                      //   child: ExpansionTile(
                                      //     title: Text('ExpansionTile 1'),
                                      //     children: <Widget>[
                                      //       ListTile(title: Text('This is tile number 1')),
                                      //     ],
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
  Save() {
  }
}
