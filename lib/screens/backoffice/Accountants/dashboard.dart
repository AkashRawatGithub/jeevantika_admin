import 'package:flutter/material.dart';

import '../../../widgets/style/style.dart';

class AccountantsDashboard extends StatefulWidget {
  const AccountantsDashboard({Key key}) : super(key: key);

  @override
  State<AccountantsDashboard> createState() => _AccountantsDashboardState();
}

class _AccountantsDashboardState extends State<AccountantsDashboard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageBackground,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0,left: 4.0, top: 4.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.08,
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left: 8.0),
                  child: Text("Dashboard", style: TextStyle(fontSize: 20,color: Colors.green),),
                ),
                color: Colors.white,
              ),
            ),

            SizedBox(height: 10,),
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
                          child: Container(child: Text("Total Folio",style: TextStyle(fontSize: 18),),),
                        ),
                        SizedBox(height: 25,),
                        Container(height: 28,width: MediaQuery.of(context).size.width*0.2, color: EditBtn,child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Total Folio",style: TextStyle(color: Colors.white, fontSize: 14, ),),
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
                          child: Container(child: Text("Total Bill Generate",style: TextStyle(fontSize: 18),),),
                        ),
                        SizedBox(height: 25,),
                        Container(height: 28,width: MediaQuery.of(context).size.width*0.2, color: EditBtn,child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Total Bill Generate",style: TextStyle(color: Colors.white, fontSize: 14, ),),
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
                          child: Container(child: Text("Total Payment Success",style: TextStyle(fontSize: 18),),),
                        ),
                        SizedBox(height: 25,),
                        Container(height: 28,width: MediaQuery.of(context).size.width*0.2, color: Colors.green,child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Total Payment Success",style: TextStyle(color: Colors.white, fontSize: 14, ),),
                            // Icon(Icons.arrow_circle_right_sharp,color: Colors.white,size: 18,)
                          ],
                        ),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
