import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevantika_Web/page_layout.dart';
import 'package:jeevantika_Web/utils/urlRoute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jeevantika Clone',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RoutesName.FIRST_PAGE,
      // home: HomePage(),

    );
  }
}
