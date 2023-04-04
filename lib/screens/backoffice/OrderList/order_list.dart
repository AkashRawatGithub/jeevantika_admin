import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

import '../Accountants/active_customers.dart';


class OrderList extends StatefulWidget {
  const OrderList({Key key}) : super(key: key);

  @override
  State<OrderList> createState() => _OrderListState();
}
var company_name_controller = TextEditingController();

class _OrderListState extends State<OrderList> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: pageBackground,
        child: Column(
          children: [

            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "All Order",
                  style: TextStyle(fontSize: 20, color: Colors.green),
                ),
              ),
              color: Colors.white,
            ),
            SizedBox(height: 5,),
            Container(
              color: Colors.white,
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Table(
                  columnWidths: {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(2),
                    3: FlexColumnWidth(2),
                    4: FlexColumnWidth(2),
                    5: FlexColumnWidth(2),
                    6: FlexColumnWidth(2),
                    7: FlexColumnWidth(2),
                  },
                  border: TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(children: [
                      Container(child: Text('Order Id', style: TextStyle(fontWeight: FontWeight.bold)) ,alignment: Alignment.center,height: 50,),
                      Container(child: Text('Order Date', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Service Provider', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Order Type.', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Total Amount', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Status', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Completion Date', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                      Container(child: Text('Action', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center,height: 50,),
                    ]),

                    TableRow(children: [
                      Container(child: Padding(
                        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                        child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold)),alignment: Alignment.center),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 4.0, top: 4, bottom: 4),
                          child: Container(
                            decoration: BoxDecoration(color: Colors.green,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: GestureDetector(
                                child: TextButton(onPressed: () {
                                  setState(() {});
                                },
                                    child: Text("View Orders Details",
                                      style: TextStyle(
                                          color: Colors.white),))),
                          ),
                        ), alignment: Alignment.center,
                      ),
                    ]),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );

  }
  Save(){
    log(data.toString());
  }
}