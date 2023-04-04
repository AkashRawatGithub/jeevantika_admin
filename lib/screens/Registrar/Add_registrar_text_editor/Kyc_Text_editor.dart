// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:jeevantika_Web/widgets/button.dart';
// import 'package:quill_html_editor/quill_html_editor.dart';
//
// class add_clss extends StatefulWidget {
//   const add_clss({Key key}) : super(key: key);
//
//   @override
//   State<add_clss> createState() => _add_clssState();
// }
//
// class _add_clssState extends State<add_clss> {
//   List<Widget> adds = [];
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: Text("KYC Update",
//           style: TextStyle(color: Colors.white),
//         ),
//         brightness: Brightness.dark,
//         backgroundColor: Colors.green,
//         actions: [
//           TextButton(
//             onPressed: () {
//               // if (adds.length > 0) {
//               //   adds.clear();
//               //   setState(() {});
//               // }
//               adds.add(container_wig());
//               setState(() {});
//             },
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//               decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(5)),
//               child: Text(
//                 "Add New",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Padding(
//             padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//             child: Column(mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: adds,
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width*0.6,
//                   alignment: Alignment.centerRight,
//                   child: custom_button(Save_, "SAVE"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   Save_(){
//   }
// }
// // Wdigt
// class container_wig extends StatefulWidget {
//   const container_wig({Key key}) : super(key: key);
//
//   @override
//   State<container_wig> createState() => _container_wigState();
// }
//
// class _container_wigState extends State<container_wig> {
//   GlobalKey<QuillHtmlEditorState> htmlKey = GlobalKey<
//       QuillHtmlEditorState>();
//   bool value = false;  bool value2 = false;  bool value3 = false;  bool value4 = false;  bool value5 = false;  bool value6 = false;
//   bool value7 = false;  bool value8 = false;  bool value9 = false;  bool value10 = false;  bool value11 = false;  bool value12 = false;
//
//   @override
//   void initState() {
//     no_o = no_o+1;
//     super.initState();
//   }
//   var no_o = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height*0.7,
//       width: MediaQuery.of(context).size.width*0.6,
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width * 0.7,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               decoration: BoxDecoration(border: Border.all()),
//               padding: EdgeInsets.all(8),
//               width: MediaQuery.of(context).size.width * 0.6,
//               child: Column(children: [
//                 SizedBox(height: 10,),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.050,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         isDense: true,
//                         contentPadding: EdgeInsets.all(10),
//                         hintText: "Enter Title",
//                         labelText: "Formate Title",
//                         border: OutlineInputBorder(),
//                         hintStyle: TextStyle(color: Colors.black, fontSize: 13),
//                         labelStyle: TextStyle(color: Colors.black, fontSize: 13)
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 3,),
//                 Container(
//                   child:
//                   //     ListView(
//                   //       scrollDirection: Axis.vertical,
//                   // children: values.keys.map((String key) {
//                   //           return CheckboxListTile(
//                   //           title: Text(key),
//                   //           value: values[key],
//                   //           onChanged: (bool? value) {
//                   //           setState(() {
//                   //           values[key] = value!  ;
//                   //           });
//                   //           },
//                   //           );
//                   //           }).toList(),
//                   //     ),
//                   Column(
//                     children: [
//                       Container(
//                           child: Row(children: [
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value,
//                                   onChanged: (value) {
//                                     setState(() {
//                                       this.value = value;
//                                     });
//                                   },
//                                 ),
//                                 Text(
//                                   "rary Implementation Of Searching ",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),),
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value3,
//                                   onChanged: (value3) {
//                                     setState(() {
//                                       this.value3 = value3;
//                                     });
//                                   },
//                                 ),
//                                 Text(" Implementation",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),),
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value2,
//                                   onChanged: (value2) {
//                                     setState(() {
//                                       this.value2 = value2;
//                                     });
//                                   },
//                                 ),
//                                 Text("rary ",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),)
//                           ],)
//                       ),
//                       Container(child: Row(children: [
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value,
//                               onChanged: (value) {
//                                 setState(() {
//                                   this.value = value;
//                                 });
//                               },
//                             ),
//                             Text("rary Implementation Of Searching ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value3,
//                               onChanged: (value3) {
//                                 setState(() {
//                                   this.value3 = value3;
//                                 });
//                               },
//                             ),
//                             Text(" Implementation",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value2,
//                               onChanged: (value2) {
//                                 setState(() {
//                                   this.value2 = value2;
//                                 });
//                               },
//                             ),
//                             Text("rary ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),)
//                       ],),),
//                       Container(child: Row(children: [
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value,
//                               onChanged: (value) {
//                                 setState(() {
//                                   this.value = value;
//                                 });
//                               },
//                             ),
//                             Text("rary Implementation Of Searching ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value3,
//                               onChanged: (value3) {
//                                 setState(() {
//                                   this.value3 = value3;
//                                 });
//                               },
//                             ),
//                             Text(" Implementation",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value2,
//                               onChanged: (value2) {
//                                 setState(() {
//                                   this.value2 = value2;
//                                 });
//                               },
//                             ),
//                             Text("rary ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),)
//                       ],),),
//                     ],
//                   ),
//                 ),
//                 Padding(padding: EdgeInsets.symmetric(vertical: 5),
//                   child: Container(
//                     decoration: BoxDecoration(border: Border.all(),
//                         borderRadius: BorderRadius.circular(5)),
//                   ),
//                 ),
//               ],),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
//   Save_(){
//   }
//
// }
//
// /*no 2 -------------------------------------------------------------------------------------------------
// ---------------------------------------------fgbfgbfgbfgbfgbfgbfgfgb-----------------------------------*/
//
// class Signature_Verification extends StatefulWidget {
//   const Signature_Verification({Key key}) : super(key: key);
//
//   @override
//   _Signature_VerificationState createState() => _Signature_VerificationState();
// }
//
// class _Signature_VerificationState extends State<Signature_Verification> {
//   List<Widget> adds = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Signature Verification",
//           style: TextStyle(color: Colors.white),
//         ),
//         brightness: Brightness.dark,
//         backgroundColor: Colors.green,
//         actions: [
//           TextButton(
//             onPressed: () {
//               // if (adds.length > 0) {
//               //   adds.clear();
//               //   setState(() {});
//               // }
//               adds.add(Signture_container());
//               setState(() {});
//             },
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//               decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(5)),
//               child: Text(
//                 "Add New",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Padding(
//             padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//             child: Column(mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: adds,
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width*0.6,
//                   alignment: Alignment.centerRight,
//                   child: custom_button(Save_, "SAVE"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   Save_(){
//   }
// }
//
// class Signture_container extends StatefulWidget {
//   const Signture_container({Key key}) : super(key: key);
//
//   @override
//   State<Signture_container> createState() => _Signture_containerState();
// }
//
// class _Signture_containerState extends State<Signture_container> {
//   GlobalKey<QuillHtmlEditorState> htmlKey = GlobalKey<
//       QuillHtmlEditorState>();
//   bool value = false;  bool value2 = false;  bool value3 = false;  bool value4 = false;  bool value5 = false;  bool value6 = false;
//   bool value7 = false;  bool value8 = false;  bool value9 = false;  bool value10 = false;  bool value11 = false;  bool value12 = false;
//
//   @override
//   void initState() {
//     no_o = no_o+1;
//     super.initState();
//   }
//   var no_o = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height*0.7,
//       width: MediaQuery.of(context).size.width*0.6,
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width * 0.7,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               decoration: BoxDecoration(border: Border.all()),
//               padding: EdgeInsets.all(8),
//               width: MediaQuery.of(context).size.width * 0.6,
//               child: Column(children: [
//                 SizedBox(height: 10,),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.050,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         isDense: true,
//                         contentPadding: EdgeInsets.all(10),
//                         hintText: "Enter Title",
//                         labelText: "Formate Title",
//                         border: OutlineInputBorder(),
//                         hintStyle: TextStyle(color: Colors.black, fontSize: 13),
//                         labelStyle: TextStyle(color: Colors.black, fontSize: 13)
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 3,),
//                 Container(
//                   child:
//                   //     ListView(
//                   //       scrollDirection: Axis.vertical,
//                   // children: values.keys.map((String key) {
//                   //           return CheckboxListTile(
//                   //           title: Text(key),
//                   //           value: values[key],
//                   //           onChanged: (bool? value) {
//                   //           setState(() {
//                   //           values[key] = value!  ;
//                   //           });
//                   //           },
//                   //           );
//                   //           }).toList(),
//                   //     ),
//                   Column(
//                     children: [
//                       Container(
//                           child: Row(children: [
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value,
//                                   onChanged: (value) {
//                                     setState(() {
//                                       this.value = value;
//                                     });
//                                   },
//                                 ),
//                                 Text(
//                                   "rary Implementation Of Searching ",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),),
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value3,
//                                   onChanged: (value3) {
//                                     setState(() {
//                                       this.value3 = value3;
//                                     });
//                                   },
//                                 ),
//                                 Text(" Implementation",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),),
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value2,
//                                   onChanged: (value2) {
//                                     setState(() {
//                                       this.value2 = value2;
//                                     });
//                                   },
//                                 ),
//                                 Text("rary ",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),)
//                           ],)
//                       ),
//                       Container(child: Row(children: [
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value,
//                               onChanged: (value) {
//                                 setState(() {
//                                   this.value = value;
//                                 });
//                               },
//                             ),
//                             Text("rary Implementation Of Searching ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value3,
//                               onChanged: (value3) {
//                                 setState(() {
//                                   this.value3 = value3;
//                                 });
//                               },
//                             ),
//                             Text(" Implementation",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value2,
//                               onChanged: (value2) {
//                                 setState(() {
//                                   this.value2 = value2;
//                                 });
//                               },
//                             ),
//                             Text("rary ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),)
//                       ],),),
//                       Container(child: Row(children: [
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value,
//                               onChanged: (value) {
//                                 setState(() {
//                                   this.value = value;
//                                 });
//                               },
//                             ),
//                             Text("rary Implementation Of Searching ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value3,
//                               onChanged: (value3) {
//                                 setState(() {
//                                   this.value3 = value3;
//                                 });
//                               },
//                             ),
//                             Text(" Implementation",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value2,
//                               onChanged: (value2) {
//                                 setState(() {
//                                   this.value2 = value2;
//                                 });
//                               },
//                             ),
//                             Text("rary ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),)
//                       ],),),
//                     ],
//                   ),
//                 ),
//                 Padding(padding: EdgeInsets.symmetric(vertical: 5),
//                   child: Container(
//                     decoration: BoxDecoration(border: Border.all(),
//                         borderRadius: BorderRadius.circular(5)),
//                   ),
//                 ),
//               ],),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
//   Save_(){
//   }
// }
//
// /*no 3 -------------------------------------------------------------------------------------------------
// ---------------------------------------------fgbfgbfgbfgbfgbfgbfgfgb-----------------------------------*/
//
// class Name_Correction extends StatefulWidget {
//   const Name_Correction({Key key}) : super(key: key);
//
//   @override
//   _Name_CorrectionState createState() => _Name_CorrectionState();
// }
//
// class _Name_CorrectionState extends State<Name_Correction> {
//   List<Widget> adds = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Name Correction",
//           style: TextStyle(color: Colors.white),
//         ),
//         brightness: Brightness.dark,
//         backgroundColor: Colors.green,
//         actions: [
//           TextButton(
//             onPressed: () {
//               // if (adds.length > 0) {
//               //   adds.clear();
//               //   setState(() {});
//               // }
//               adds.add(Name_container());
//               setState(() {});
//             },
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//               decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(5)),
//               child: Text(
//                 "Add New",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Padding(
//             padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//             child: Column(mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: adds,
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width*0.6,
//                   alignment: Alignment.centerRight,
//                   child: custom_button(Save_, "SAVE"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   Save_(){
//   }
// }
//
// class Name_container extends StatefulWidget {
//   const Name_container({Key key}) : super(key: key);
//
//   @override
//   State<Name_container> createState() => _Name_containerState();
// }
//
// class _Name_containerState extends State<Name_container> {
//   GlobalKey<QuillHtmlEditorState> htmlKey = GlobalKey<
//       QuillHtmlEditorState>();
//   bool value = false;  bool value2 = false;  bool value3 = false;  bool value4 = false;  bool value5 = false;  bool value6 = false;
//   bool value7 = false;  bool value8 = false;  bool value9 = false;  bool value10 = false;  bool value11 = false;  bool value12 = false;
//
//   @override
//   void initState() {
//     no_o = no_o+1;
//     super.initState();
//   }
//   var no_o = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height*0.7,
//       width: MediaQuery.of(context).size.width*0.6,
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width * 0.7,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               decoration: BoxDecoration(border: Border.all()),
//               padding: EdgeInsets.all(8),
//               width: MediaQuery.of(context).size.width * 0.6,
//               child: Column(children: [
//                 SizedBox(height: 10,),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.050,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         isDense: true,
//                         contentPadding: EdgeInsets.all(10),
//                         hintText: "Enter Title",
//                         labelText: "Formate Title",
//                         border: OutlineInputBorder(),
//                         hintStyle: TextStyle(color: Colors.black, fontSize: 13),
//                         labelStyle: TextStyle(color: Colors.black, fontSize: 13)
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 3,),
//                 Container(
//                   child:
//                   //     ListView(
//                   //       scrollDirection: Axis.vertical,
//                   // children: values.keys.map((String key) {
//                   //           return CheckboxListTile(
//                   //           title: Text(key),
//                   //           value: values[key],
//                   //           onChanged: (bool? value) {
//                   //           setState(() {
//                   //           values[key] = value!  ;
//                   //           });
//                   //           },
//                   //           );
//                   //           }).toList(),
//                   //     ),
//                   Column(
//                     children: [
//                       Container(
//                           child: Row(children: [
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value,
//                                   onChanged: (value) {
//                                     setState(() {
//                                       this.value = value;
//                                     });
//                                   },
//                                 ),
//                                 Text(
//                                   "rary Implementation Of Searching ",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),),
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value3,
//                                   onChanged: (value3) {
//                                     setState(() {
//                                       this.value3 = value3;
//                                     });
//                                   },
//                                 ),
//                                 Text(" Implementation",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),),
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value2,
//                                   onChanged: (value2) {
//                                     setState(() {
//                                       this.value2 = value2;
//                                     });
//                                   },
//                                 ),
//                                 Text("rary ",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),)
//                           ],)
//                       ),
//                       Container(child: Row(children: [
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value,
//                               onChanged: (value) {
//                                 setState(() {
//                                   this.value = value;
//                                 });
//                               },
//                             ),
//                             Text("rary Implementation Of Searching ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value3,
//                               onChanged: (value3) {
//                                 setState(() {
//                                   this.value3 = value3;
//                                 });
//                               },
//                             ),
//                             Text(" Implementation",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value2,
//                               onChanged: (value2) {
//                                 setState(() {
//                                   this.value2 = value2;
//                                 });
//                               },
//                             ),
//                             Text("rary ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),)
//                       ],),),
//                       Container(child: Row(children: [
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value,
//                               onChanged: (value) {
//                                 setState(() {
//                                   this.value = value;
//                                 });
//                               },
//                             ),
//                             Text("rary Implementation Of Searching ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value3,
//                               onChanged: (value3) {
//                                 setState(() {
//                                   this.value3 = value3;
//                                 });
//                               },
//                             ),
//                             Text(" Implementation",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value2,
//                               onChanged: (value2) {
//                                 setState(() {
//                                   this.value2 = value2;
//                                 });
//                               },
//                             ),
//                             Text("rary ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),)
//                       ],),),
//                     ],
//                   ),
//                 ),
//                 Padding(padding: EdgeInsets.symmetric(vertical: 5),
//                   child: Container(
//                     decoration: BoxDecoration(border: Border.all(),
//                         borderRadius: BorderRadius.circular(5)),
//
//                   ),
//                 ),
//               ],),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
//   Save_() {
//   }
// }
//
// /*no 4 -------------------------------------------------------------------------------------------------
// ---------------------------------------------fgbfgbfgbfgbfgbfgbfgfgb-----------------------------------*/
//
// class Duplicate_Issue extends StatefulWidget {
//   const Duplicate_Issue({Key key}) : super(key: key);
//
//   @override
//   _Duplicate_IssueState createState() => _Duplicate_IssueState();
// }
//
// class _Duplicate_IssueState extends State<Duplicate_Issue> {
//   List<Widget> adds = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Duplicate Issue of Shares",
//           style: TextStyle(color: Colors.white),
//         ),
//         brightness: Brightness.dark,
//         backgroundColor: Colors.green,
//         actions: [
//           TextButton(
//             onPressed: () {
//               // if (adds.length > 0) {
//               //   adds.clear();
//               //   setState(() {});
//               // }
//               adds.add(Duplicate_Issue_container());
//               setState(() {});
//             },
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//               decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(5)),
//               child: Text(
//                 "Add New",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Padding(
//             padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//             child: Column(mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: adds,
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width*0.6,
//                   alignment: Alignment.centerRight,
//                   child: custom_button(Save_, "SAVE"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   Save_(){
//
//   }
// }
//
// class Duplicate_Issue_container extends StatefulWidget {
//   const Duplicate_Issue_container({Key key}) : super(key: key);
//
//   @override
//   State<Duplicate_Issue_container> createState() => _Duplicate_Issue_containerState();
// }
//
// class _Duplicate_Issue_containerState extends State<Duplicate_Issue_container> {
//   GlobalKey<QuillHtmlEditorState> htmlKey = GlobalKey<
//       QuillHtmlEditorState>();
//   bool value = false;  bool value2 = false;  bool value3 = false;  bool value4 = false;  bool value5 = false;  bool value6 = false;
//   bool value7 = false;  bool value8 = false;  bool value9 = false;  bool value10 = false;  bool value11 = false;  bool value12 = false;
//
//   @override
//   void initState() {
//     no_o = no_o+1;
//     super.initState();
//   }
//   var no_o = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height*0.7,
//       width: MediaQuery.of(context).size.width*0.6,
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width * 0.7,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               decoration: BoxDecoration(border: Border.all()),
//               padding: EdgeInsets.all(8),
//               width: MediaQuery.of(context).size.width * 0.6,
//               child: Column(children: [
//                 SizedBox(height: 10,),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.050,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         isDense: true,
//                         contentPadding: EdgeInsets.all(10),
//                         hintText: "Enter Title",
//                         labelText: "Formate Title",
//                         border: OutlineInputBorder(),
//                         hintStyle: TextStyle(color: Colors.black, fontSize: 13),
//                         labelStyle: TextStyle(color: Colors.black, fontSize: 13)
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 3,),
//                 Container(
//                   child:
//                   //     ListView(
//                   //       scrollDirection: Axis.vertical,
//                   // children: values.keys.map((String key) {
//                   //           return CheckboxListTile(
//                   //           title: Text(key),
//                   //           value: values[key],
//                   //           onChanged: (bool? value) {
//                   //           setState(() {
//                   //           values[key] = value!  ;
//                   //           });
//                   //           },
//                   //           );
//                   //           }).toList(),
//                   //     ),
//                   Column(
//                     children: [
//                       Container(
//                           child: Row(children: [
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value,
//                                   onChanged: (value) {
//                                     setState(() {
//                                       this.value = value;
//                                     });
//                                   },
//                                 ),
//                                 Text(
//                                   "rary Implementation Of Searching ",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),),
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value3,
//                                   onChanged: (value3) {
//                                     setState(() {
//                                       this.value3 = value3;
//                                     });
//                                   },
//                                 ),
//                                 Text(" Implementation",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),),
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value2,
//                                   onChanged: (value2) {
//                                     setState(() {
//                                       this.value2 = value2;
//                                     });
//                                   },
//                                 ),
//                                 Text("rary ",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),)
//                           ],)
//                       ),
//                       Container(child: Row(children: [
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value,
//                               onChanged: (value) {
//                                 setState(() {
//                                   this.value = value;
//                                 });
//                               },
//                             ),
//                             Text("rary Implementation Of Searching ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value3,
//                               onChanged: (value3) {
//                                 setState(() {
//                                   this.value3 = value3;
//                                 });
//                               },
//                             ),
//                             Text(" Implementation",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value2,
//                               onChanged: (value2) {
//                                 setState(() {
//                                   this.value2 = value2;
//                                 });
//                               },
//                             ),
//                             Text("rary ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),)
//                       ],),),
//                       Container(child: Row(children: [
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value,
//                               onChanged: (value) {
//                                 setState(() {
//                                   this.value = value;
//                                 });
//                               },
//                             ),
//                             Text("rary Implementation Of Searching ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value3,
//                               onChanged: (value3) {
//                                 setState(() {
//                                   this.value3 = value3;
//                                 });
//                               },
//                             ),
//                             Text(" Implementation",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value2,
//                               onChanged: (value2) {
//                                 setState(() {
//                                   this.value2 = value2;
//                                 });
//                               },
//                             ),
//                             Text("rary ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),)
//                       ],),),
//                     ],
//                   ),
//                 ),
//                 Padding(padding: EdgeInsets.symmetric(vertical: 5),
//                   child: Container(
//                     decoration: BoxDecoration(border: Border.all(),
//                         borderRadius: BorderRadius.circular(5)),
//                   ),
//                 ),
//               ],),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
//   Save_(){
//   }
// }
//
// /*no 5 -------------------------------------------------------------------------------------------------
// ---------------------------------------------fgbfgbfgbfgbfgbfgbfgfgb-----------------------------------*/
//
// class Trass_Value_below extends StatefulWidget {
//   const Trass_Value_below({Key key}) : super(key: key);
//
//   @override
//   _Trass_Value_belowState createState() => _Trass_Value_belowState();
// }
//
// class _Trass_Value_belowState extends State<Trass_Value_below> {
//   List<Widget> adds = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Transmission of shares of value below Rs. 2 lakh",
//           style: TextStyle(color: Colors.white),
//         ),
//         brightness: Brightness.dark,
//         backgroundColor: Colors.green,
//         actions: [
//           TextButton(
//             onPressed: () {
//               // if (adds.length > 0) {
//               //   adds.clear();
//               //   setState(() {});
//               // }
//               adds.add(Trass_Value_below_container());
//               setState(() {});
//             },
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//               decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(5)),
//               child: Text(
//                 "Add New",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Padding(
//             padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//             child: Column(mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: adds,
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width*0.6,
//                   alignment: Alignment.centerRight,
//                   child: custom_button(Save_, "SAVE"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   Save_(){
//   }
// }
//
// class Trass_Value_below_container extends StatefulWidget {
//   const Trass_Value_below_container({Key key}) : super(key: key);
//
//   @override
//   State<Trass_Value_below_container> createState() => _Trass_Value_below_containerState();
// }
//
// class _Trass_Value_below_containerState extends State<Trass_Value_below_container> {
//   GlobalKey<QuillHtmlEditorState> htmlKey = GlobalKey<
//       QuillHtmlEditorState>();
//   bool value = false;  bool value2 = false;  bool value3 = false;  bool value4 = false;  bool value5 = false;  bool value6 = false;
//   bool value7 = false;  bool value8 = false;  bool value9 = false;  bool value10 = false;  bool value11 = false;  bool value12 = false;
//
//   @override
//   void initState() {
//     no_o = no_o+1;
//     super.initState();
//   }
//   var no_o = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height*0.7,
//       width: MediaQuery.of(context).size.width*0.6,
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width * 0.7,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               decoration: BoxDecoration(border: Border.all()),
//               padding: EdgeInsets.all(8),
//               width: MediaQuery.of(context).size.width * 0.6,
//               child: Column(children: [
//                 SizedBox(height: 10,),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.050,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         isDense: true,
//                         contentPadding: EdgeInsets.all(10),
//                         hintText: "Enter Title",
//                         labelText: "Formate Title",
//                         border: OutlineInputBorder(),
//                         hintStyle: TextStyle(color: Colors.black, fontSize: 13),
//                         labelStyle: TextStyle(color: Colors.black, fontSize: 13)
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 3,),
//                 Container(
//                   child:
//                   //     ListView(
//                   //       scrollDirection: Axis.vertical,
//                   // children: values.keys.map((String key) {
//                   //           return CheckboxListTile(
//                   //           title: Text(key),
//                   //           value: values[key],
//                   //           onChanged: (bool? value) {
//                   //           setState(() {
//                   //           values[key] = value!  ;
//                   //           });
//                   //           },
//                   //           );
//                   //           }).toList(),
//                   //     ),
//                   Column(
//                     children: [
//                       Container(
//                           child: Row(children: [
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value,
//                                   onChanged: (value) {
//                                     setState(() {
//                                       this.value = value;
//                                     });
//                                   },
//                                 ),
//                                 Text(
//                                   "rary Implementation Of Searching ",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),),
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value3,
//                                   onChanged: (value3) {
//                                     setState(() {
//                                       this.value3 = value3;
//                                     });
//                                   },
//                                 ),
//                                 Text(" Implementation",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),),
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value2,
//                                   onChanged: (value2) {
//                                     setState(() {
//                                       this.value2 = value2;
//                                     });
//                                   },
//                                 ),
//                                 Text("rary ",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),)
//                           ],)
//                       ),
//                       Container(child: Row(children: [
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value,
//                               onChanged: (value) {
//                                 setState(() {
//                                   this.value = value;
//                                 });
//                               },
//                             ),
//                             Text("rary Implementation Of Searching ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value3,
//                               onChanged: (value3) {
//                                 setState(() {
//                                   this.value3 = value3;
//                                 });
//                               },
//                             ),
//                             Text(" Implementation",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value2,
//                               onChanged: (value2) {
//                                 setState(() {
//                                   this.value2 = value2;
//                                 });
//                               },
//                             ),
//                             Text("rary ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),)
//                       ],),),
//                       Container(child: Row(children: [
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value,
//                               onChanged: (value) {
//                                 setState(() {
//                                   this.value = value;
//                                 });
//                               },
//                             ),
//                             Text("rary Implementation Of Searching ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value3,
//                               onChanged: (value3) {
//                                 setState(() {
//                                   this.value3 = value3;
//                                 });
//                               },
//                             ),
//                             Text(" Implementation",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value2,
//                               onChanged: (value2) {
//                                 setState(() {
//                                   this.value2 = value2;
//                                 });
//                               },
//                             ),
//                             Text("rary ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),)
//                       ],),),
//                     ],
//                   ),
//                 ),
//                 Padding(padding: EdgeInsets.symmetric(vertical: 5),
//                   child: Container(
//                     decoration: BoxDecoration(border: Border.all(),
//                         borderRadius: BorderRadius.circular(5)),
//                   ),
//                 ),
//               ],),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
//   Save_(){
//   }
// }
//
// /*no 6 -------------------------------------------------------------------------------------------------
// ---------------------------------------------fgbfgbfgbfgbfgbfgbfgfgb-----------------------------------*/
//
// class Trass_Value_above extends StatefulWidget {
//   const Trass_Value_above({Key key}) : super(key: key);
//
//   @override
//   _Trass_Value_aboveState createState() => _Trass_Value_aboveState();
// }
//
// class _Trass_Value_aboveState extends State<Trass_Value_above> {
//   List<Widget> adds = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Transmission of shares of value above Rs. 2 lakh",
//           style: TextStyle(color: Colors.white),
//         ),
//         brightness: Brightness.dark,
//         backgroundColor: Colors.green,
//         actions: [
//           TextButton(
//             onPressed: () {
//               // if (adds.length > 0) {
//               //   adds.clear();
//               //   setState(() {});
//               // }
//               adds.add(Trass_Value_above_container());
//               setState(() {});
//             },
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//               decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(5)),
//               child: Text(
//                 "Add New",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Padding(
//             padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//             child: Column(mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: adds,
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width*0.6,
//                   alignment: Alignment.centerRight,
//                   child: custom_button(Save_, "SAVE"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   Save_(){
//   }
// }
//
// class Trass_Value_above_container extends StatefulWidget {
//   const Trass_Value_above_container({Key key}) : super(key: key);
//
//   @override
//   State<Trass_Value_above_container> createState() => _Trass_Value_above_containerState();
// }
//
// class _Trass_Value_above_containerState extends State<Trass_Value_above_container> {
//   GlobalKey<QuillHtmlEditorState> htmlKey = GlobalKey<
//       QuillHtmlEditorState>();
//   bool value = false;  bool value2 = false;  bool value3 = false;  bool value4 = false;  bool value5 = false;  bool value6 = false;
//   bool value7 = false;  bool value8 = false;  bool value9 = false;  bool value10 = false;  bool value11 = false;  bool value12 = false;
//
//   @override
//   void initState() {
//     no_o = no_o+1;
//     super.initState();
//   }
//   var no_o = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height*0.7,
//       width: MediaQuery.of(context).size.width*0.6,
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width * 0.7,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               decoration: BoxDecoration(border: Border.all()),
//               padding: EdgeInsets.all(8),
//               width: MediaQuery.of(context).size.width * 0.6,
//               child: Column(children: [
//                 SizedBox(height: 10,),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.050,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         isDense: true,
//                         contentPadding: EdgeInsets.all(10),
//                         hintText: "Enter Title",
//                         labelText: "Formate Title",
//                         border: OutlineInputBorder(),
//                         hintStyle: TextStyle(color: Colors.black, fontSize: 13),
//                         labelStyle: TextStyle(color: Colors.black, fontSize: 13)
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 3,),
//                 Container(
//                   child:
//                   //     ListView(
//                   //       scrollDirection: Axis.vertical,
//                   // children: values.keys.map((String key) {
//                   //           return CheckboxListTile(
//                   //           title: Text(key),
//                   //           value: values[key],
//                   //           onChanged: (bool? value) {
//                   //           setState(() {
//                   //           values[key] = value!  ;
//                   //           });
//                   //           },
//                   //           );
//                   //           }).toList(),
//                   //     ),
//                   Column(
//                     children: [
//                       Container(
//                           child: Row(children: [
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value,
//                                   onChanged: (value) {
//                                     setState(() {
//                                       this.value = value;
//                                     });
//                                   },
//                                 ),
//                                 Text(
//                                   "rary Implementation Of Searching ",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),),
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value3,
//                                   onChanged: (value3) {
//                                     setState(() {
//                                       this.value3 = value3;
//                                     });
//                                   },
//                                 ),
//                                 Text(" Implementation",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),),
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value2,
//                                   onChanged: (value2) {
//                                     setState(() {
//                                       this.value2 = value2;
//                                     });
//                                   },
//                                 ),
//                                 Text("rary ",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),)
//                           ],)
//                       ),
//                       Container(child: Row(children: [
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value,
//                               onChanged: (value) {
//                                 setState(() {
//                                   this.value = value;
//                                 });
//                               },
//                             ),
//                             Text("rary Implementation Of Searching ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value3,
//                               onChanged: (value3) {
//                                 setState(() {
//                                   this.value3 = value3;
//                                 });
//                               },
//                             ),
//                             Text(" Implementation",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value2,
//                               onChanged: (value2) {
//                                 setState(() {
//                                   this.value2 = value2;
//                                 });
//                               },
//                             ),
//                             Text("rary ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),)
//                       ],),),
//                       Container(child: Row(children: [
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value,
//                               onChanged: (value) {
//                                 setState(() {
//                                   this.value = value;
//                                 });
//                               },
//                             ),
//                             Text("rary Implementation Of Searching ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value3,
//                               onChanged: (value3) {
//                                 setState(() {
//                                   this.value3 = value3;
//                                 });
//                               },
//                             ),
//                             Text(" Implementation",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value2,
//                               onChanged: (value2) {
//                                 setState(() {
//                                   this.value2 = value2;
//                                 });
//                               },
//                             ),
//                             Text("rary ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),)
//                       ],),),
//                     ],
//                   ),
//                 ),
//                 Padding(padding: EdgeInsets.symmetric(vertical: 5),
//                   child: Container(
//                     decoration: BoxDecoration(border: Border.all(),
//                         borderRadius: BorderRadius.circular(5)),
//                   ),
//                 ),
//               ],),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
//   Save_(){
//   }
// }
//
// /*no 7 -------------------------------------------------------------------------------------------------
// ---------------------------------------------fgbfgbfgbfgbfgbfgbfgfgb-----------------------------------*/
//
// class Duplicate_Cum extends StatefulWidget {
//   const Duplicate_Cum({Key key}) : super(key: key);
//
//   @override
//   _Duplicate_CumState createState() => _Duplicate_CumState();
// }
//
// class _Duplicate_CumState extends State<Duplicate_Cum> {
//
//   List<Widget> adds = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Duplicate Cum Transmission",
//           style: TextStyle(color: Colors.white),
//         ),
//         brightness: Brightness.dark,
//         backgroundColor: Colors.green,
//         actions: [
//           TextButton(
//             onPressed: () {
//               // if (adds.length > 0) {
//               //   adds.clear();
//               //   setState(() {});
//               // }
//               adds.add(Duplicate_Cum_container());
//               setState(() {});
//             },
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//               decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(5)),
//               child: Text(
//                 "Add New",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Padding(
//             padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//             child: Column(mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: adds,
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width*0.6,
//                   alignment: Alignment.centerRight,
//                   child: custom_button(Save_, "SAVE"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   Save_(){
//   }
// }
//



// class Duplicate_Cum_container extends StatefulWidget {
//   const Duplicate_Cum_container({Key key}) : super(key: key);
//
//   @override
//   State<Duplicate_Cum_container> createState() => _Duplicate_Cum_containerState();
// }
//
// class _Duplicate_Cum_containerState extends State<Duplicate_Cum_container> {
//   GlobalKey<QuillHtmlEditorState> htmlKey = GlobalKey<
//       QuillHtmlEditorState>();
//   bool value = false;  bool value2 = false;  bool value3 = false;  bool value4 = false;  bool value5 = false;  bool value6 = false;
//   bool value7 = false;  bool value8 = false;  bool value9 = false;  bool value10 = false;  bool value11 = false;  bool value12 = false;
//
//   @override
//   void initState() {
//     no_o = no_o+1;
//     super.initState();
//   }
//   var no_o = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height*0.7,
//       width: MediaQuery.of(context).size.width*0.6,
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width * 0.7,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               decoration: BoxDecoration(border: Border.all()),
//               padding: EdgeInsets.all(8),
//               width: MediaQuery.of(context).size.width * 0.6,
//               child: Column(children: [
//                 SizedBox(height: 10,),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.050,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         isDense: true,
//                         contentPadding: EdgeInsets.all(10),
//                         hintText: "Enter Title",
//                         labelText: "Formate Title",
//                         border: OutlineInputBorder(),
//                         hintStyle: TextStyle(color: Colors.black, fontSize: 13),
//                         labelStyle: TextStyle(color: Colors.black, fontSize: 13)
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 3,),
//                 Container(
//                   child:
//                   //     ListView(
//                   //       scrollDirection: Axis.vertical,
//                   // children: values.keys.map((String key) {
//                   //           return CheckboxListTile(
//                   //           title: Text(key),
//                   //           value: values[key],
//                   //           onChanged: (bool? value) {
//                   //           setState(() {
//                   //           values[key] = value!  ;
//                   //           });
//                   //           },
//                   //           );
//                   //           }).toList(),
//                   //     ),
//                   Column(
//                     children: [
//                       Container(
//                           child: Row(children: [
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value,
//                                   onChanged: (value) {
//                                     setState(() {
//                                       this.value = value;
//                                     });
//                                   },
//                                 ),
//                                 Text(
//                                   "rary Implementation Of Searching ",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),),
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value3,
//                                   onChanged: (value3) {
//                                     setState(() {
//                                       this.value3 = value3;
//                                     });
//                                   },
//                                 ),
//                                 Text(" Implementation",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),),
//                             Container(child: Row(
//                               children: <Widget>[
//                                 Checkbox(
//                                   activeColor: Colors.green,
//                                   checkColor: Colors.white,
//                                   value: this.value2,
//                                   onChanged: (value2) {
//                                     setState(() {
//                                       this.value2 = value2;
//                                     });
//                                   },
//                                 ),
//                                 Text("rary ",
//                                   style: TextStyle(fontSize: 14.0),
//                                 ), //Checkbox
//                               ], //<Widget>[]
//                             ),)
//                           ],)
//                       ),
//                       Container(child: Row(children: [
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value,
//                               onChanged: (value) {
//                                 setState(() {
//                                   this.value = value;
//                                 });
//                               },
//                             ),
//                             Text("rary Implementation Of Searching ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value3,
//                               onChanged: (value3) {
//                                 setState(() {
//                                   this.value3 = value3;
//                                 });
//                               },
//                             ),
//                             Text(" Implementation",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value2,
//                               onChanged: (value2) {
//                                 setState(() {
//                                   this.value2 = value2;
//                                 });
//                               },
//                             ),
//                             Text("rary ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),)
//                       ],),),
//                       Container(child: Row(children: [
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value,
//                               onChanged: (value) {
//                                 setState(() {
//                                   this.value = value;
//                                 });
//                               },
//                             ),
//                             Text("rary Implementation Of Searching ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value3,
//                               onChanged: (value3) {
//                                 setState(() {
//                                   this.value3 = value3;
//                                 });
//                               },
//                             ),
//                             Text(" Implementation",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),),
//                         Container(child: Row(
//                           children: <Widget>[
//                             Checkbox(
//                               activeColor: Colors.green,
//                               checkColor: Colors.white,
//                               value: this.value2,
//                               onChanged: (value2) {
//                                 setState(() {
//                                   this.value2 = value2;
//                                 });
//                               },
//                             ),
//                             Text("rary ",
//                               style: TextStyle(fontSize: 14.0),
//                             ), //Checkbox
//                           ], //<Widget>[]
//                         ),)
//                       ],),),
//                     ],
//                   ),
//                 ),
//                 Padding(padding: EdgeInsets.symmetric(vertical: 5),
//                   child: Container(
//                     decoration: BoxDecoration(border: Border.all(),
//                         borderRadius: BorderRadius.circular(5)),
//
//                   ),
//                 ),
//               ],),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
//   Save_(){
//   }
// }
//
// /*no 8 -------------------------------------------------------------------------------------------------
// ---------------------------------------------fgbfgbfgbfgbfgbfgbfgfgb-----------------------------------*/
//
// class IEPF extends StatefulWidget {
//   const IEPF({Key key}) : super(key: key);
//
//   @override
//   _IEPFState createState() => _IEPFState();
// }
//
// class _IEPFState extends State<IEPF> {
//   List<Widget> adds = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("IEPF",
//           style: TextStyle(color: Colors.white),
//         ),
//         brightness: Brightness.dark,
//         backgroundColor: Colors.green,
//         actions: [
//           TextButton(
//             onPressed: () {
//               adds.add(IEPF_container());
//               setState(() {});
//             },
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//               decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(5)),
//               child: Text(
//                 "Add New",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//   Save_(){
//   }
// }
//
// class IEPF_container extends StatefulWidget {
//   const IEPF_container({Key key}) : super(key: key);
//
//   @override
//   State<IEPF_container> createState() => _IEPF_containerState();
// }
//
// class _IEPF_containerState extends State<IEPF_container> {
//   GlobalKey<QuillHtmlEditorState> htmlKey = GlobalKey<
//       QuillHtmlEditorState>();
//   bool value = false;  bool value2 = false;  bool value3 = false;  bool value4 = false;  bool value5 = false;  bool value6 = false;
//   bool value7 = false;  bool value8 = false;  bool value9 = false;  bool value10 = false;  bool value11 = false;  bool value12 = false;
//
//   @override
//   void initState() {
//     no_o = no_o+1;
//     super.initState();
//   }
//   var no_o = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height*0.7,
//       width: MediaQuery.of(context).size.width*0.6,
//     );
//   }
//   Save_(){
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:jeevantika_Web/utils/screen_size.dart';

import '../../../widgets/button.dart';
import '../../../widgets/style/style.dart';

class KycUpdate extends StatefulWidget {
  const KycUpdate({Key key}) : super(key: key);

  @override
  State<KycUpdate> createState() => _KycUpdateState();
}

class _KycUpdateState extends State<KycUpdate> {
  List<Widget> adds = [];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Text Editor "),),
      body: SafeArea(
        child: SingleChildScrollView(scrollDirection: Axis.vertical
          ,
          child: Column(
            children: [
              Container(child: Column(children: _childrenList(),)),
              Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (containerList.length==1) Container() else Padding(
                      padding: const EdgeInsets.only(right: 5.0),
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
                    Container(
                      width: 30,
                      child: FloatingActionButton(
                        backgroundColor: SubmitGreen,
                        onPressed: () { setState(() {
                          addContainer();
                        }); },
                        child:  Icon(Icons.add, size: 20, color: Colors.white,),
                      ),
                    ),

                    custom_Newbutton(Save,SubmitGreen,"Save Company")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Save()
  {}  List<Widget> containerList = [
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
  var controller = HtmlEditorController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            height: MediaQuery.of(context).size.height*0.5,
            width: SizeTamp.blockSizeHorizontal*100,
            child: HtmlEditor(
              controller: controller, //required
              htmlEditorOptions: HtmlEditorOptions(
                shouldEnsureVisible: true,
                hint: "Your text here...",
                // initalText: "text content initial, if any",
              ),
              otherOptions: OtherOptions(
                height: 200,
              ),
            ),
          ),
        ),
      ],
    );

  }


  Widget htmlEditor = HtmlEditor(
      // controller: controller, //required
      //other options
      htmlToolbarOptions: HtmlToolbarOptions(
          defaultToolbarButtons: [
            StyleButtons(),
            ParagraphButtons(lineHeight: false, caseConverter: false)
          ]
      )
  );

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