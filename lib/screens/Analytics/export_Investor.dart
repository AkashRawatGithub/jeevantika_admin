import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/button.dart';
import '../../widgets/get_drawer.dart';
import '../../widgets/style/style.dart';

class Export_Investor extends StatefulWidget {
  const Export_Investor({Key key}) : super(key: key);

  @override
  State<Export_Investor> createState() => _Export_InvestorState();
}

class _Export_InvestorState extends State<Export_Investor> {
  final _formKey = GlobalKey<FormState>();
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
            child: Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
                      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                        height: MediaQuery.of(context).size.height*0.08,
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.centerLeft,
                        child: const Padding(
                          padding:  EdgeInsets.only(left: 8.0),
                          child: Text("Export Investor", style: TextStyle(fontSize: 24,color: Colors.green),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0,bottom: 3.0, top: 8.0,right: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                        width: MediaQuery.of(context).size.width*1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Column(mainAxisAlignment: MainAxisAlignment.start,
                            children:<Widget>[
                              Container(padding:EdgeInsets.symmetric(vertical: 3),
                                decoration: BoxDecoration(border: Border(top: BorderSide(width: 2.0, color: Colors.green),)),
                                child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start ,
                                  children: [
                                    Container(padding:EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                                      child: Text("Export"),
                                    ),
                                    Divider(),
                                    Container(
                                      padding:EdgeInsets.symmetric(horizontal: 2,vertical: 2),
                                      child: custom_button_2(export_1,Colors.blue.shade500,"Export Search Investor"),
                                    ),
                                    Container(
                                      padding:EdgeInsets.symmetric(horizontal: 2,vertical: 2),
                                      child: custom_button_2(Particulate,Colors.green.shade900,"Export Particulate Search Investor"),
                                    ),
                                    Container(
                                      padding:EdgeInsets.symmetric(horizontal: 2,vertical: 2),
                                      child: custom_button_2(Favorite,Colors.green.shade600,"Export Favorite Search List"),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
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
    );
  }
  export_1(){}
  Particulate(){}
  Favorite(){}
}
