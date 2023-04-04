import 'package:flutter/material.dart';
import '../../widgets/style/style.dart';

class Editt extends StatefulWidget {
  const Editt({Key key}) : super(key: key);

  @override
  State<Editt> createState() => _EdittState();
}

class _EdittState extends State<Editt> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                color: Colors.white,
                child: Table(
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
                  ],
                ),
              ),
              Container(
                height: 20,
                width: 200,
                color: Colors.green,
              )
            ],
          );
        }
    );
  }
}
