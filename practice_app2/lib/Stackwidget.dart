import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Stack Widget'),
        ),
        body: Container(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              Container(
                  width: 200,
                  height:200,
                  color:Colors.blue
              ),
              Positioned(
                left: 21,
                top: 21,
                bottom:21,
                right: 21,
                child: Container(
                    width: 160,
                    height:160,
                    color:Colors.yellow
                ),
              ),
              Container(
                  width: 120,
                  height:120,
                  color:Colors.red
              ),
            ],
          ),
        )
    );
  }
}