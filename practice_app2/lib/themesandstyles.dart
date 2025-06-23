import 'package:flutter/material.dart';
import 'package:practice_app2/ui_helper/util.dart';

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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          textTheme: TextTheme(
              headlineSmall:TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              titleMedium:TextStyle(fontSize: 11, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)
          )
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
    var arrNames = ['Raman', 'Rajesh', 'James', 'John', 'Rahul', 'Manas'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text(widget.title), // Uses the title from MyHomePage
        ),
        body: Column(
          children: [
            Text('Hello World', style:Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.orange)),
            Text('Hello World', style:Theme.of(context).textTheme.titleMedium),
            Text('Hello World', style:Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.orange)),
            Text('Hello World', style:mTextStyle11(textColor: Colors.blue)),
          ],
        )
    );
  }
}