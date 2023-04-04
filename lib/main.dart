import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevantika_Web/page_layout.dart';

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
      title: 'Jeevantika crm',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
      },
      // home: HomePage(),

    );
  }
}
