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
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Select Date', style: TextStyle(fontSize: 25)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                DateTime now = DateTime.now();
                DateTime? datePicked = await showDatePicker(
                  context: context,
                  initialDate: now,
                  firstDate: DateTime(2021),
                  lastDate: DateTime(now.year + 1), // ✅ Safe dynamic lastDate
                );
                if (datePicked != null && mounted) {
                  setState(() {
                    selectedDate = datePicked;
                  });
                }
              },
              child: const Text('Show Date Picker'),
            ),
            ElevatedButton(onPressed: () async{
              TimeOfDay? pickedTime = await showTimePicker(context: context, initialTime: TimeOfDay.now(),initialEntryMode: TimePickerEntryMode.dial );
              if(pickedTime!=null){
                print('Time Selected: ${pickedTime.hour}-${pickedTime.minute}');
              }
            }, child: Text('Select Time')),
            const SizedBox(height: 30),
            if (selectedDate != null)
              Text(
                'Date Selected: ${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
          ],
        ),
      ),
    );
  }
}