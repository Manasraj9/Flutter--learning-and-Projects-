import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"FlutterApp",
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
          primarySwatch: Colors.blue
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Dashboard'),
      ),
      body: Container(
        color: Colors.lightGreen,
      ),
    );
  }

}