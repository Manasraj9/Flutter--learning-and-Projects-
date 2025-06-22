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
      body:Container(
        width:200,
        height:300,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          crossAxisAlignment:CrossAxisAlignment.end,
          children:[
            Text('A',style: TextStyle(fontSize: 25),),
            Text('B',style: TextStyle(fontSize: 25),),
            Text('C',style: TextStyle(fontSize: 25),),
            Text('D',style: TextStyle(fontSize: 25),),
            Text('E',style: TextStyle(fontSize: 25),),
            Text('F',style: TextStyle(fontSize: 25),),
          ],
        ),
        // child: Row(
        //   mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment:CrossAxisAlignment.center,
        //   children:[
        //     Text('A',style: TextStyle(fontSize: 25),),
        //     Text('B',style: TextStyle(fontSize: 25),),
        //     Text('C',style: TextStyle(fontSize: 25),),
        //     Text('D',style: TextStyle(fontSize: 25),),
        //     Text('E',style: TextStyle(fontSize: 25),),
        //     Text('F',style: TextStyle(fontSize: 25),),
        //   ],
        // ),
      ),
    );
  }
}

