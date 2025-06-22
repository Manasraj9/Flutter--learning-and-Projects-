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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title), // 👈 Uses the title from MyHomePage
      ),
      body: InkWell(
        onTap: (){
          print('Tapped on Container');
        },
        onLongPress: (){
          print('Longpressed on Container');
        },
        onDoubleTap: (){
          print('Double Tapped on Container');
        },
        child: Container(
          width:100,
          height:100,
          color:Colors.amber,
          child: Text("Click me",style:TextStyle(fontSize: 21, fontWeight:FontWeight.w700)),
        ),
      ),
    );
  }
}