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
  var count = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Stateful and Stateless Widgets'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Text('Count :$count',style: TextStyle(fontSize: 34),),
                ElevatedButton(onPressed: (){


                  setState((){
                    count++;
                    print(count);
                  });
                }, child: Text('Increment count'))
              ],
            ))
    );
  }
}