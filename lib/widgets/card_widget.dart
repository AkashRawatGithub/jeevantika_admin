import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/utils/utils.dart';

import '../utils/screen_size.dart';

Card_ListPage(context,item_num){
  return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            padding:EdgeInsets.symmetric(horizontal: 5),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: item_num.length,
                itemBuilder: (itemBuilder,index){
                  return InkWell(
                    onTap:() async {
                    },
                    child: Padding( padding:  EdgeInsets.only(top: 5),
                      child: Card(
                        color: Colors.grey.shade50,
                        child: Container(
                          child: Padding(padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                            child: Row(children: [
                              Expanded(
                                flex:2,
                                child: Row(children: [
                                  Container(child: Text(item_num[index]["name"],style: TextStyle(fontSize: 14 ,color:Colors.grey.shade800,fontWeight: FontWeight.w600),textAlign: TextAlign.left),),
                                  SizedBox(width: 5,),
                                  Container(padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1.5),borderRadius: BorderRadius.circular(3)),
                                    child: Text(item_num[index]["contact"],style: TextStyle(fontSize:13,),textAlign: TextAlign.left),
                                  ),SizedBox(width: 5,),
                                  Container(child:RichText(
                                    text: TextSpan(style:  TextStyle(fontSize: 12.0,),
                                      children: <TextSpan>[
                                        TextSpan(text: 'Email Id :-  ', style:  TextStyle(color:Colors.grey.shade800,fontWeight: FontWeight.bold)),
                                        TextSpan(text:" "+ item_num[index]["name"]),
                                      ],
                                    ),)
                                  )
                                ],)
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
                                  child: Container(alignment: Alignment.centerRight,padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Deleted")));
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
                                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Deleted")));
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
                                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Deleted 2")));
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
                                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Deleted 2")));
                                          },
                                          child: Tooltip(message: "Block",
                                            child: Container(decoration: BoxDecoration(color:Colors.pink,borderRadius: BorderRadius.circular(3)),
                                              padding: EdgeInsets.all(4),
                                              child: DecoratedIcon(
                                                Icons.lock_open_outlined,
                                                color: Colors.white,
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],),
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
    );
}