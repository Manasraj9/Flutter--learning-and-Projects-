import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: const MyHomePage(title: 'BMI Home Page'),
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

  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result =" ";
  var bgColor=Colors.indigo.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('BMI Calculator'),
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BMI', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 21,),

                TextField(
                  controller:wtController,
                  decoration: InputDecoration(
                    label:Text('Enter your weight (in Kgs)'),
                    prefixIcon: Icon(Icons.line_weight),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                  SizedBox(height: 10,),
                TextField(
                  controller:ftController,
                  decoration: InputDecoration(
                      label:Text('Enter your height (in feet)'),
                      prefixIcon: Icon(Icons.height),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10,),
                TextField(
                  controller:inController,
                  decoration: InputDecoration(
                      label:Text('Enter your height (in Inches)'),
                      prefixIcon: Icon(Icons.height),
                      border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10,),

                ElevatedButton(onPressed: (){
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inController.text.toString();

                  if(wt!="" && ft!="" && inch!=""){
                    var iwt = int.parse(wt);
                    var ift = int.parse(ft);
                    var iInch = int.parse(inch);

                    var tInch = (ift*12)+iInch;
                    var tcm = tInch*2.54;
                    var tm = tcm/100;
                    var bmi = iwt/(tm*tm);
                    var msg="";

                    if (bmi>25){
                      msg = 'You are Overweight';
                      bgColor = Colors.red.shade200;
                    }else if(bmi<18){
                      msg = 'You are Underweight';
                      bgColor = Colors.orange.shade200;
                    }else{
                      msg = 'You are Healthy';
                      bgColor = Colors.green.shade200;
                    }


                    setState(() {
                      result = "$msg \n Your BMI is: ${bmi.toStringAsFixed(2)}";
                    });
                  }else{
                    setState(() {
                      result = 'Fill All the required Inputs';
                    });
                  }
                },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // <-- Background color
                  foregroundColor: Colors.white, // <-- Text/Icon color
                ),
                    child: Text('Calculate')),

                SizedBox(height: 10,),
                Text(result, style: TextStyle(fontSize: 20, color: Colors.white),),

              ],
            ),
          ),
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
