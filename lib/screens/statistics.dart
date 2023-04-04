import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

import '../widgets/Cards.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}
class MyData {
  final int id;
  final String name;
  final String description;
  final String data;

  MyData({this.id, this.name, this.description, this.data});
}

class _StatisticsState extends State<Statistics> {
  int _currentPage = 1;
  int _rowsPerPage = 10;
  List<MyData> _data = List.generate(100, (index) => MyData(id: index + 1, name: 'Name $index', description: 'Registrar $index', data:'user personal data  $index'));

  List<MyData> get _pagedData {
    final startIndex = (_currentPage - 1) * _rowsPerPage;
    final endIndex = startIndex + _rowsPerPage;
    return _data.sublist(startIndex, endIndex > _data.length ? _data.length : endIndex);
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: pageBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
              padding: const EdgeInsets.all(8.0),
              child: Text("Consolidate Data",style: TextStyle(fontSize: 20),),
            ),
            Row(children: [
              dynamicCardswithoutbtn
                (
                context,
                "0",
                "Total Investor",
              ),
              SizedBox(width: 10,),
              dynamicCardswithoutbtn
                (
                context,
                "0",
                "Market value of Investor",
              ),
              SizedBox(width: 10,),
              dynamicCardswithoutbtn
                (
                context,
                "0",
                "Updated as on",
              ),
            ],),

            SizedBox(height: 6,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Send Data",style: TextStyle(fontSize: 20),),
            ),
            Row(children: [
              dynamicCardsWithbtn
                (
                context,
                "0",
                "Total Send Investor",
                  UpdatedCustomers
              ),
              SizedBox(width: 10,),
              dynamicCardswithoutbtn
                (
                context,
                "0",
                "Market Value of Send Investor",
              ),
              SizedBox(width: 10,),
              dynamicCardswithoutbtn
                (
                context,
                "0",
                "Total Send State",
              ),
              SizedBox(width: 10,),
              dynamicCardswithoutbtn
                (
                context,
                "0",
                "Total Send Company",
              ),
            ],),
            SizedBox(height: 6,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Recieved Data",style: TextStyle(fontSize: 20),),
            ),
            Row(children: [
              dynamicCardsWithbtn
                (
                context,
                "0",
                "Today Update Investor",
                  UpdatedCustomers
              ),
              SizedBox(width: 10,),
              dynamicCardsWithbtn
                (
                context,
                "0",
                "Total Update Investor",
                  UpdatedCustomers
              ),
              SizedBox(width: 10,),
              dynamicCardsWithbtn
                (
                context,
                "0",
                "Total Updated Customers",
                UpdatedCustomers
              ),
            ],),
            SizedBox(height: 6,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Company Data",style: TextStyle(fontSize: 20),),
            ),
            Row(children: [
              dynamicCardsWithbtn
                (
                  context,
                  "0",
                  "Total Business Associate",
                  UpdatedCustomers
              ),
              SizedBox(width: 10,),
              dynamicCardsWithbtn
                (
                  context,
                  "0",
                  "Total Company in Investor",
                  UpdatedCustomers
              ),
            ],),
            SizedBox(height: 6,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Customer Data",style: TextStyle(fontSize: 20),),
            ),
            Row(children: [
              dynamicCardswithoutbtn
                (
                  context,
                  "0",
                  "Total App Register",

              ),
              SizedBox(width: 10,),
              dynamicCardswithoutbtn
                (
                  context,
                  "0",
                  "Total Web Register"
              ),
            ],),
            SizedBox(height: 6,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Send Data",style: TextStyle(fontSize: 20),),
            ),
            Row(children: [
              dynamicCardswithoutbtnlarge
                (
                  context,
                  "0",
                  "Total number of customer register on sanjeevani"
              ),
              SizedBox(width: 10,),
              dynamicCardswithoutbtnlarge
                (
                context,
                "0",
                "Total unique folio number under process on sanjeevani",
              ),
              SizedBox(width: 10,),
              dynamicCardswithoutbtnlarge
                (
                context,
                "0",
                "Total market value of shares on sanjeevani",
              ),
              SizedBox(width: 10,),
              dynamicCardswithoutbtnlarge
                (
                context,
                "0",
                "Total number of companies under process on sanjeevani",
              ),
            ],),
            SizedBox(height: 4,),
            Row(children: [
              dynamicCardswithoutbtnlarge
                (
                context,
                "0",
                "Total number of companies covered on sanjeevani",
              ),
              SizedBox(width: 10,),
              dynamicCardswithoutbtnlarge
                (
                context,
                "0",
                "Total number of rta covered on sanjeevani",
              ),
              SizedBox(width: 10,),
              dynamicCardswithoutbtnlarge
                (
                context,
                "0",
                "Total number of rta under process on sanjeevani",
              ),
            ],),

            SizedBox(height: 6,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Backoffice",style: TextStyle(fontSize: 20),),
            ),
            dynamicCardswithoutbtn
              (
              context,
              "0",
              "Total Backoffice",
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('S.No.')),
                      DataColumn(label: Text('Backoffice')),
                      DataColumn(label: Text('Premium Customers')),
                      DataColumn(label: Text('Premium Folio')),
                      DataColumn(label: Text('Uploaded Agreement')),
                    ],
                    rows: _pagedData.map((data) {
                      return DataRow(
                        cells: [
                          DataCell(Text(data.id.toString())),
                          DataCell(Text(data.name)),
                          DataCell(Text(data.description)),
                          DataCell(Text(data.name)),
                          DataCell(Text(data.data)),
                        ],
                      );
                    }).toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: _currentPage == 1
                          ? null
                          : () {
                        setState(() {
                          _currentPage--;
                        });
                      },
                    ),
                    Text('Page $_currentPage'),
                    IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: _currentPage == (_data.length / _rowsPerPage).ceil()
                          ? null
                          : () {
                        setState(() {
                          _currentPage++;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  UpdatedCustomers(){}
}
