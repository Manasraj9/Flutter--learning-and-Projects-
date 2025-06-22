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
          height: double.infinity,
          width: double.infinity,
          color: Colors.lightGreen,
          child:Center(
            child: Container(
                width: 150,
                height: 150,
                decoration:BoxDecoration(
                    color: Colors.blueGrey,
                    // borderRadius: BorderRadius.circular(11)
                    //   borderRadius: BorderRadius.only(topLeft: Radius.circular(21),bottomRight: Radius.circular(21)),
                    border: Border.all(
                        width: 2,
                        color: Colors.black
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 2,
                          color: Colors.red
                      )
                    ],
                    shape:BoxShape.circle
                )
            ),
          )
      ),
    );
  }

}