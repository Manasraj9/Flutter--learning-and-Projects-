import 'package:flutter/cupertino.dart';

main(){
  var listNames=[10,20,30,40];
  listNames.add(50);
  listNames.add(60);
  print("$listNames");

  // var names =[];
  // names.add("Raman");
  // names.add("Raju");
  // names.add("Rajan");
  // names.add("Rajni");
  // //names.addAll(listNames);
  // names.insert(2,100);
  // names.insertAll(3,listNames);
  // names[1] = "Ramanujam";
  // listNames.replaceRange(0,3,[1,2,3,4]);
  // print("$names");
  // listNames.removeLast();
  // listNames.removeAt(1);
  // listNames.removeRange(0,4);
  print("Length: ${listNames.length}");
  print("reversed: ${listNames.reversed}");
  print("First: ${listNames.first}");
  print("Last: ${listNames.last}");
  print("Isempty: ${listNames.isEmpty}");
  print("IsNorempty: ${listNames.isNotEmpty}");
  print("2nd index Element: ${listNames.elementAt(2)}");

  print("Hello World");
}