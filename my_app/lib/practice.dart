import 'dart:io';
void main(){
  // print('Welcome to Dart!');
  // stdout.write('Welcome to Dart!');
  // var name = stdin.readLineSync();
  // print("Welcome, $name");
  // Human();

  //Declaration of Variable
  int? a;  //Nullable variable
  a=5;   //Initialization
  print(a);
  a=7;
  print(a);

  //inline declaration
  String name="Manas";
  print(name);

  BigInt longvalue;
  longvalue=BigInt.parse('5432167890987654321');
  print(longvalue);
  double b=99.8;
  print(b);

  bool isLogin=false;
  print(isLogin);
}

class Human{
  Human();
}