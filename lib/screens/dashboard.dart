import 'package:flutter/material.dart';

import '../utils/responsive.dart';
import '../widgets/dashbord_widget.dart';
import '../widgets/style/style.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List cardValue = [
    {"value":"1","title":"Total Company","button":"Export"},
    {"value":"2","title":"Total Company","button":"Export"},
    {"value":"3","title":"Total Company","button":"Export"},
    {"value":"4","title":"Total Company","button":"Export"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageBackground,
      child: ListView(scrollDirection:Axis.vertical,children: [Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ResponsiveWidget.isLargeScreen(context)? Container(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.2,
                      height: 120,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 4),
                            child: Container(child: Text("0",style: TextStyle(fontSize: 18),),),
                          ),
                          SizedBox(height: 21,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(child: Text("Total Registration",style: TextStyle(fontSize: 18),),),
                          ),
                          SizedBox(height: 25,),
                          Container(height: 28,width: MediaQuery.of(context).size.width*0.2, color: EditBtn,child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Export",style: TextStyle(color: Colors.white, fontSize: 14, ),),
                              Icon(Icons.arrow_circle_right_sharp,color: Colors.white,size: 18,)
                            ],
                          ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.2,
                      height: 120,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 4),
                            child: Container(child: Text("0",style: TextStyle(fontSize: 18),),),
                          ),
                          SizedBox(height: 21,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(child: Text("Total Company",style: TextStyle(fontSize: 18),),),
                          ),
                          SizedBox(height: 25,),
                          Container(height: 28,width: MediaQuery.of(context).size.width*0.2, color: Colors.lightBlueAccent,child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Text("Export",style: TextStyle(color: Colors.white, fontSize: 14, ),),
                              // Icon(Icons.arrow_circle_right_sharp,color: Colors.white,size: 18,)
                            ],
                          ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  dashbord(
                    context,
                    "","",""
                  ),
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.2,
                      height: 120,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 4),
                            child: Container(child: Text("0",style: TextStyle(fontSize: 18),),),
                          ),
                          SizedBox(height: 21,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(child: Text("Total Market Value",style: TextStyle(fontSize: 18),),),
                          ),
                          SizedBox(height: 25,),
                          Container(height: 28,width: MediaQuery.of(context).size.width*0.2, color: Colors.pink[400],child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Text("Export",style: TextStyle(color: Colors.white, fontSize: 14, ),),
                              // Icon(Icons.arrow_circle_right_sharp,color: Colors.white,size: 18,)
                            ],
                          ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.2,
                      height: 120,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 4),
                            child: Container(child: Text("0",style: TextStyle(fontSize: 18),),),
                          ),
                          SizedBox(height: 21,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(child: Text("Total Update Investor",style: TextStyle(fontSize: 18),),),
                          ),
                          SizedBox(height: 25,),
                          Container(height: 28,width: MediaQuery.of(context).size.width*0.2, color: Colors.purple,child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Export",style: TextStyle(color: Colors.white, fontSize: 14, ),),
                              Icon(Icons.arrow_circle_right_sharp,color: Colors.white,size: 18,)
                            ],
                          ),)
                        ],
                      ),
                    ),
                  ),

                ],
              ),
              // Row(
              //   children: [
              //     Card(
              //       child: SizedBox(
              //         width: MediaQuery.of(context).size.width*0.15,
              //         height: 110,
              //         child:Text('Total Registration'),
              //       ),
              //     ),
              //     Card(
              //       child: SizedBox(
              //         width: MediaQuery.of(context).size.width*0.15,
              //         height: 110,
              //         child:Text('Total Registration'),
              //       ),
              //     ),
              //     Card(
              //       child: SizedBox(
              //         width: MediaQuery.of(context).size.width*0.15,
              //         height: 110,
              //         child:Text('Total Registration'),
              //       ),
              //     ),
              //     Card(
              //       child: SizedBox(
              //         width: MediaQuery.of(context).size.width*0.15,
              //         height: 110,
              //         child:Text('Total Registration'),
              //       ),
              //     ),
              //     Card(
              //       child: SizedBox(
              //         width: MediaQuery.of(context).size.width*0.15,
              //         height: 110,
              //         child:Text('Total Registration'),
              //       ),
              //     ),
              //
              //   ],
              // ),
            ],
          ),
          ): ResponsiveWidget.isMediumScreen(context)?Container(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.3,
                      height: 110,
                      child:Text('Total Registration'),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.3,
                      height: 110,
                      child:Text('Total Registration'),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.3,
                      height: 110,
                      child:Text('Total Registration'),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.3,
                      height: 110,
                      child:Text('Total Registration'),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.3,
                      height: 110,
                      child:Text('Total Registration'),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.3,
                      height: 110,
                      child:Text('Total Registration'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ): ResponsiveWidget.isSmallScreen(context)?Container(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.45,
                      height: 110,
                      child:Text('Total Registration'),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.45,
                      height: 110,
                      child:Text('Total Registration'),
                    ),
                  ),

                ],
              ),

              Row(
                children: [
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.45,
                      height: 110,
                      child:Text('Total Registration'),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.45,
                      height: 110,
                      child:Text('Total Registration'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.45,
                      height: 110,
                      child:Text('Total Registration'),
                    ),
                  ),

                ],
              ),
            ],
          ),
          ):Container(),
        ),
      )]),
    );
  }
}
