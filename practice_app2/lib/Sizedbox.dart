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
          title: Text('Sizedbox'),
        ),
        body: Row(
          children: [
            SizedBox.square(
              dimension: 180,
              // width: 200,
              // height: 34,
              child: ElevatedButton(onPressed: (){

              }, child:Text('Click')),
            ),

            SizedBox(
              width: 20,
            ),

            SizedBox.square(
              dimension: 180,
              // width: 200,
              // height: 34,
              child: ElevatedButton(onPressed: (){

              }, child:Text('Click')),
            ),
          ],
        )
    );
  }
}

// child: ConstrainedBox(
// constraints: BoxConstraints(
// minHeight: 20,
// minWidth: 100,
// maxHeight: 80,
// maxWidth: 400
// ),