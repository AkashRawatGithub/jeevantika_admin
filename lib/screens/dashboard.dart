import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/responsive.dart';
import '../widgets/appbar_bottombar.dart';
import '../widgets/dashbord_widget.dart';
import '../widgets/get_drawer.dart';
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
    return Scaffold(
      appBar: getAppBar(),
      // drawer: getDrawer(context),
      drawerEnableOpenDragGesture: false,
      drawerScrimColor: Colors.transparent,
      body: Row(
        children: [
          getDrawer(context),
          Expanded(
            child: Container(
              color: pageBackground,
              child: ListView(scrollDirection:Axis.vertical,children: [Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 1.0,left: 1.0, top: 1.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*0.08,
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:  EdgeInsets.only(left: 8.0),
                              child: Text("Welcome to Jeevantika", style: TextStyle(fontSize: 20,color: Colors.green),),
                            ),
                            color: Colors.white,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              )]),
            ),
          ),
        ],
      ),
      bottomNavigationBar:getBottomBar(),
    );
  }
}
