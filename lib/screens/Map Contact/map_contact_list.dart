import 'package:flutter/material.dart';

import '../../widgets/style/style.dart';

class MapContactList extends StatefulWidget {
  const MapContactList({Key key}) : super(key: key);

  @override
  State<MapContactList> createState() => _MapContactListState();
}
class MyData {
  final int id;
  final String name;
  final String description;
  final String data;

  MyData({this.id, this.name, this.description, this.data});
}
class _MapContactListState extends State<MapContactList> {
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
    return Container(
      color: pageBackground,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0,left: 4.0, top: 4.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.08,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:  EdgeInsets.only(left: 8.0),
                child: Text("Map Contact List", style: TextStyle(fontSize: 20,color: Colors.green),),
              ),
              color: Colors.white,
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text('S.No.')),
                        DataColumn(label: Text('Name')),
                        DataColumn(label: Text('Phone No.')),
                        DataColumn(label: Text('Email')),
                        DataColumn(label: Text('State')),
                        DataColumn(label: Text('City')),
                        DataColumn(label: Text('Address')),
                        DataColumn(label: Text('Action')),
                      ],
                      rows: _pagedData.map((data) {
                        return DataRow(
                          cells: [
                            DataCell(Text(data.id.toString())),
                            DataCell(Text(data.name)),
                            DataCell(Text(data.description)),
                            DataCell(Text(data.name)),
                            DataCell(Text(data.data)),
                            DataCell(Text(data.name)),
                            DataCell(Text(data.description)),
                            DataCell(Row(
                              children: [
                                IconButton(icon: Icon(Icons.edit,size: 20,color: Colors.green,), onPressed: () {setState(() {

                                });  },),
                                IconButton(icon: Icon(Icons.delete,size: 20,color: Colors.red,), onPressed: () { setState(() {

                                });},),
                              ],
                            )),
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
            ),
          ),
        ],
      ),
    );
  }
}

