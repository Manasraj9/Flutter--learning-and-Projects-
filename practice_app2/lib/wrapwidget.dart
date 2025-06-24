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
          title: Text('Wrap Widget'),
        ),
        body: Container(
          width: double.infinity,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            // direction:Axis.vertical,
            spacing: 11,
            runSpacing: 11,
            children: [
              Container(
                width: 100,height: 100,
                color: Colors.deepOrangeAccent,
              ),
              Container(
                width: 100,height: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 100,height: 100,
                color: Colors.black,
              ),
              Container(
                width: 100,height: 100,
                color: Colors.deepOrangeAccent,
              ),Container(
                width: 100,height: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,height: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,height: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,height: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,height: 100,
                color: Colors.red,
              ),



            ],
          ),
        )
    );
  }
}