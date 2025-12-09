import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "CW2",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int num = 0;
  String num1 = "";
  String num2 = "";
  String Operator = "";
  String ShowVal = "0";
  double result = 0.0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculatter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ShowVal, style: const TextStyle(fontSize: 40)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(Operator.isEmpty) {
                        num1 += "7";
                        ShowVal = num1;
                      } else {
                        num2 += "7";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: const Text("7", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(Operator.isEmpty) {
                        num1 += "8";
                        ShowVal = num1;
                      } else {
                        num2 += "8";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: const Text("8", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(Operator.isEmpty) {
                        num1 += "9";
                        ShowVal = num1;
                      } else {
                        num2 += "9";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: const Text("9", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                  onPressed: () {
                    Operator = "+";
                  },
                  child: const Text("+", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10,),
              ],
            ), 
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(Operator.isEmpty) {
                        num1 += "4";
                        ShowVal = num1;
                      } else {
                        num2 += "4";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: const Text("4", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(Operator.isEmpty) {
                        num1 += "5";
                        ShowVal = num1;
                      } else {
                        num2 += "5";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: const Text("5", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(Operator.isEmpty) {
                        num1 += "6";
                        ShowVal = num1;
                      } else {
                        num2 += "6";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: const Text("6", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                   onPressed: () {
                    Operator = "-";
                  },
                  child: const Text("-", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
             SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                 onPressed: () {
                    setState(() {
                      if(Operator.isEmpty) {
                        num1 += "1";
                        ShowVal = num1;
                      } else {
                        num2 += "1";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: const Text("1", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(Operator.isEmpty) {
                        num1 += "2";
                        ShowVal = num1;
                      } else {
                        num2 += "2";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: const Text("2", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(Operator.isEmpty) {
                        num1 += "3";
                        ShowVal = num1;
                      } else {
                        num2 += "3";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: const Text("3", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                  onPressed: () {
                    Operator = "*";
                  },
                  child: const Text("*", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
             SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(Operator.isEmpty) {
                        num1 += "0";
                        ShowVal = num1;
                      } else {
                        num2 += "0";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: const Text("0", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                   onPressed: () { 
                      setState(() { 
                        ShowVal = "0"; 
                      });
                    },
                  child: const Text("C", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                   onPressed: () {
                    if(num1 == "" || num2 == "") return;
                    if(Operator == "+") {
                      result = double.parse(num1) + double.parse(num2);
                    } else if (Operator == "-") {
                      result = double.parse(num1) - double.parse(num2);
                    } else if (Operator == "*") {
                      result = double.parse(num1) * double.parse(num2);
                    } else if (Operator == "/") {
                      result = double.parse(num1) / double.parse(num2);
                    }


                    ShowVal = result.toString();
                  },
                  child: const Text("=", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                  onPressed: () {
                    Operator = "/";
                  },
                  child: const Text("/", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}