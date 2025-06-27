import 'package:flutter/material.dart';
import 'main.dart'; // To use MyHomePage from main.dart

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
      ),
      body: Column(
        children: [
          Text('Welcome'),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
            child: Text('Next'),
          )
        ],
      ),
    );
  }
}
