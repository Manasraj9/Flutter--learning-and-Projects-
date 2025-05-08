import 'dart:io';
void main(){
  // print('Welcome to Dart!');
  stdout.write('Welcome to Dart!');
  var name = stdin.readLineSync();
  print("Welcome, $name");
}