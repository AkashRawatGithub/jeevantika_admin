
import 'package:flutter/material.dart';

import '../../utils/screen_size.dart';
import '../../widgets/appbar_bottombar.dart';
import '../../widgets/button.dart';
import '../../widgets/get_drawer.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';
import '../Managedata/business_partner_list.dart';

class ManageCouponCode extends StatefulWidget {
  const ManageCouponCode({Key key}) : super(key: key);

  @override
  State<ManageCouponCode> createState() => _ManageCouponCodeState();
}
var _selected;
List<String> _Values = ['Backoffice','Accountant','Channel Partner'];

final _formKey = GlobalKey<FormState>();
var EditCouponCode_=false;
class _ManageCouponCodeState extends State<ManageCouponCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Row(
        children: [
          getDrawer(context),
          Expanded(
            child: Container(
              color: pageBackground,
              child: EditCouponCode_==false?Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0,left: 4.0, top: 8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.08,
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 8.0),
                        child: Text("Manage Coupon Code", style: TextStyle(fontSize: 20,color: Colors.green),),
                      ),
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(20.0),
                    child: Table(
                      columnWidths: {
                        0: FlexColumnWidth(0.5),
                        1: FlexColumnWidth(4),
                        2: FlexColumnWidth(4),
                        3: FlexColumnWidth(4),
                        4: FlexColumnWidth(4),
                      },
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Container(child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('S.No.', style: TextStyle(fontWeight: FontWeight.bold)),
                          ) ,alignment: Alignment.centerLeft,height: 50,),
                          Container(child: Text('Coupon Code', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.centerLeft,height: 50,),
                          Container(child: Text('Department', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.centerLeft,height: 50,),
                          Container(child: Text('	Employee Name', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.centerLeft,height: 50,),
                          Container(child: Text('Action', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.centerLeft,height: 50,)
                        ]),
                        TableRow(children: [
                          Container(child: Text('1', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                          Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                          Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                          Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    child: FloatingActionButton(
                                      shape: BeveledRectangleBorder( borderRadius: BorderRadius.circular(3.0), ),
                                      backgroundColor: EditBtn,
                                      child:  Icon(Icons.edit,size: 15,color: Colors.white,),
                                      onPressed: () { setState(() {
                                        EditCouponCode_=!EditCouponCode_;
                                      }); },
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    child: FloatingActionButton(
                                      shape: BeveledRectangleBorder( borderRadius: BorderRadius.circular(3.0), ),
                                      backgroundColor: Colors.green,
                                      child:  Icon(Icons.delete,size: 15,color: Colors.white,),
                                      onPressed: () { setState(() {

                                      }); },
                                    ),
                                  ),
                                ),

                                Container(
                                  width: 35,
                                  height: 35,
                                  child: FloatingActionButton(
                                    shape: BeveledRectangleBorder( borderRadius: BorderRadius.circular(3.0), ),
                                    backgroundColor: Colors.red,
                                    child:  Icon(Icons.block,size: 15,color: Colors.white,),
                                    onPressed: () { setState(() {

                                    }); },
                                  ),
                                ),
                              ],
                            ),alignment: Alignment.center,
                          ),
                        ]),

                      ],
                    ),
                  ),
                )],
              ):Container(
                child: Form(
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
                              child: Text("Update Coupon Name *", style: TextStyle(fontSize: 20,color: Colors.green),),
                            ),
                            color: Colors.white,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 8.0,right: 8.0),
                          child: Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Container(alignment: Alignment.centerLeft,child: Text("Contact Person Name *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4,),
                                    custom_textField_withoutlabel(
                                        company_name_controller,
                                        "Enter Company Name",
                                        "Please Enter Company Name",
                                        Colors.black45 ,
                                        SizeConfig.blockSizeVertical*1.5,
                                        MediaQuery.of(context).size.width/2

                                    ),

                                    SizedBox(height: 15),
                                    Container(alignment: Alignment.centerLeft,child: Text("Select Department *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                                    SizedBox(height: 5,),
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
                                          hint: Text('Select Employee',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
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

                                    SizedBox(height: 15),
                                    Container(alignment: Alignment.centerLeft,child: Text("Select Employee *",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: dark))),
                                    SizedBox(height: 5,),
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


                                  ]
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8),
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*0.08,
                              alignment: Alignment.centerLeft,
                              color:Colors.white,
                              child: custom_button(Save,"Update Coupon ")),
                        ),

                      ],
                    ),
                  ),
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

  }
}





