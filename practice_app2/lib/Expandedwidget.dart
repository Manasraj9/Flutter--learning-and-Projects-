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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex:2,
              child: Container(
                // width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                // width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                // width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Container(
                // width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
          ],
        )
    );
  }

}