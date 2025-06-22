import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // ✅ Set the starting screen
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

    var arrNames = ['Raman','Rajesh','James','John','Rahul','Manas'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title), // 👈 Uses the title from MyHomePage
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(
            arrNames[index],
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          );
        },
        itemCount: arrNames.length,
        itemExtent: 200,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
