import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';


class BackofficeDashboard extends StatefulWidget {
  const BackofficeDashboard({Key key}) : super(key: key);

  @override
  State<BackofficeDashboard> createState() => _BackofficeDashboardState();
}

class _BackofficeDashboardState extends State<BackofficeDashboard> {

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
                          child: Container(child: Text("Total Investor",style: TextStyle(fontSize: 18),),),
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
                          child: Container(child: Text("Total Update Investor",style: TextStyle(fontSize: 18),),),
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
                          child: Container(child: Text("Client Found",style: TextStyle(fontSize: 18),),),
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
                          child: Container(child: Text("Client Not Found",style: TextStyle(fontSize: 18),),),
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
                          child: Container(child: Text("Follow Up",style: TextStyle(fontSize: 18),),),
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

              ],
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
                          child: Container(child: Text("Converted",style: TextStyle(fontSize: 18),),),
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
                          child: Container(child: Text(" ",style: TextStyle(fontSize: 18),),),
                        ),
                        SizedBox(height: 21,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(child: Text("Search Investor",style: TextStyle(fontSize: 18),),),
                        ),
                        SizedBox(height: 25,),
                        Container(height: 28,width: MediaQuery.of(context).size.width*0.2, color: Colors.pink[400],child: Row(
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
                          child: Container(child: Text(" ",style: TextStyle(fontSize: 18),),),
                        ),
                        SizedBox(height: 21,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(child: Text("Particular Search Investor",style: TextStyle(fontSize: 18),),),
                        ),
                        SizedBox(height: 25,),
                        Container(height: 28,width: MediaQuery.of(context).size.width*0.2, color: Colors.pink[400],child: Row(
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
                          child: Container(child: Text(" ",style: TextStyle(fontSize: 18),),),
                        ),
                        SizedBox(height: 21,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(child: Text("Favrouite Investor List",style: TextStyle(fontSize: 18),),),
                        ),
                        SizedBox(height: 25,),
                        Container(height: 28,width: MediaQuery.of(context).size.width*0.2, color: Colors.pink[400],child: Row(
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
          ],
        ),
      ),
    );
  }
}
