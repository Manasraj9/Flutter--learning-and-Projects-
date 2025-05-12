void main() {
  print('Welcome to Dart!');

  // String name = "Manas";
  //
  // var
  // var section = "A";
  // var rollno = 11;
  // rollno = 7;
  var myC = myClass();
  // myc.printName("Flutter"); //Func Calling
  // myc.printName("Dart");
  // myc.printName("Kotlin");
  // myc.printName("Java");

  print(myC.Add(5,6));
  print(myC.Add(101,200));
}

class myClass{

  myClass(){  //default constructor
    print("My Class Object");
  }

  void printName(String name){  //Declaration
    print(name);  //Definition
  }

  int Add(int no1, int no2){
    int sum=no1 + no2;
    return sum;
  }
}