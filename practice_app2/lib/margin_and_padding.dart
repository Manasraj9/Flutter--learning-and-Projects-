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
          color: Colors.green,
          margin: EdgeInsets.all(11),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Hello World', style:TextStyle(fontSize:25, color:Colors.white)),
          ),
        )
    );
  }

}

// body: Padding(
// padding: const EdgeInsets.all(11),
// child: Text('Hello World', style:TextStyle(fontSize:25)),
// )