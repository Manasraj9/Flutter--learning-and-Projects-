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
  var emailText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var arrNames = ['Raman', 'Rajesh', 'James', 'John', 'Rahul', 'Manas'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title), // Uses the title from MyHomePage
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.orange,width:2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    suffixText: "Username Exist",
                    suffixIcon:IconButton(icon: Icon(Icons.remove_red_eye, color:Colors.orange),
                      onPressed: (){},),
                    prefixIcon:Icon(Icons.email, color: Colors.blue,)
                ),
              ),
              Container(height: 5),
              TextField(
                keyboardType: TextInputType.phone,
                controller: passText,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Password here.. ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.deepPurple),
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                String uEmail = emailText.text.toString();
                String uPass = passText.text.toString();

                print("Email :$uEmail,Password: uPass");
              },
                  child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}