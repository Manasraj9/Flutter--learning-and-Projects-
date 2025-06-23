import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Date Picker Demo',
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

    var arrColors = [Colors.amber, Colors.blue,Colors.grey,Colors.orange, Colors.deepPurple, Colors.red, Colors.green, Colors.lightBlue];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            // Container(
            //   height: 200,
            //   child: GridView.count(crossAxisCount: 4,
            //       crossAxisSpacing: 11,
            //       mainAxisSpacing: 11,
            //       children:[
            //         Container(color:arrColors[0]),
            //         Container(color:arrColors[1]),
            //         Container(color:arrColors[2]),
            //         Container(color:arrColors[3]),
            //         Container(color:arrColors[4]),
            //         Container(color:arrColors[5]),
            //         Container(color:arrColors[6]),
            //         Container(color:arrColors[7]),
            //       ]
            //   ),
            // ),
            // Container(height: 100,),
            Container(
              height:300,
              child: GridView.extent(maxCrossAxisExtent: 100,
                  crossAxisSpacing: 11,
                  mainAxisSpacing: 11,
                  children:[
                    Container(color:arrColors[0]),
                    Container(color:arrColors[1]),
                    Container(color:arrColors[2]),
                    Container(color:arrColors[3]),
                    Container(color:arrColors[4]),
                    Container(color:arrColors[5]),
                    Container(color:arrColors[6]),
                    Container(color:arrColors[7]),
                  ]),
            )
          ],
        )

    );
  }
}