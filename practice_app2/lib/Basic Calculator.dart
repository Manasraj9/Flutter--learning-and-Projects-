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
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Basic calulations'),
      ),
      body: Container(
        color: Colors.blue.shade300,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller),
                TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var sum = no1+no2;
                        result = 'The sum of $no1 and $no2 is $sum';

                        setState((){});
                      }, child: Text('Add')),
                      ElevatedButton(onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var sub = no1-no2;
                        result = 'The Subtraction of $no1 and $no2 is $sub';

                        setState((){});
                      }, child: Text('Subtract')),
                      ElevatedButton(onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var mult = no1*no2;
                        result = 'The multiplicaion of $no1 and $no2 is $mult';

                        setState((){});
                      }, child: Text('Multiply')),
                      ElevatedButton(onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var div = no1/no2;
                        result = 'The division of $no1 and $no2 is ${div.toStringAsFixed(2)}';

                        setState((){});
                      }, child: Text('Divide')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(result, style: TextStyle(fontSize: 21,color: Colors.white)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
