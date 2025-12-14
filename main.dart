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
  String operator = "";
  String showVal = "0";
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(showVal, style: const TextStyle(fontSize: 40)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "7";
                        showVal = num1;
                      } else {
                        num2 += "7";
                        showVal = num2;
                      }
                    });
                  },
                  child: const Text("7", style: TextStyle(fontSize: 30)),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "8";
                        showVal = num1;
                      } else {
                        num2 += "8";
                        showVal = num2;
                      }
                    });
                  },
                  child: const Text("8", style: TextStyle(fontSize: 30)),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "9";
                        showVal = num1;
                      } else {
                        num2 += "9";
                        showVal = num2;
                      }
                    });
                  },
                  child: const Text("9", style: TextStyle(fontSize: 30)),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      operator = "+";
                    });
                  },
                  child: const Text("+", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "4";
                        showVal = num1;
                      } else {
                        num2 += "4";
                        showVal = num2;
                      }
                    });
                  },
                  child: const Text("4", style: TextStyle(fontSize: 30)),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "5";
                        showVal = num1;
                      } else {
                        num2 += "5";
                        showVal = num2;
                      }
                    });
                  },
                  child: const Text("5", style: TextStyle(fontSize: 30)),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "6";
                        showVal = num1;
                      } else {
                        num2 += "6";
                        showVal = num2;
                      }
                    });
                  },
                  child: const Text("6", style: TextStyle(fontSize: 30)),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      operator = "-";
                    });
                  },
                  child: const Text("-", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "1";
                        showVal = num1;
                      } else {
                        num2 += "1";
                        showVal = num2;
                      }
                    });
                  },
                  child: const Text("1", style: TextStyle(fontSize: 30)),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "2";
                        showVal = num1;
                      } else {
                        num2 += "2";
                        showVal = num2;
                      }
                    });
                  },
                  child: const Text("2", style: TextStyle(fontSize: 30)),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "3";
                        showVal = num1;
                      } else {
                        num2 += "3";
                        showVal = num2;
                      }
                    });
                  },
                  child: const Text("3", style: TextStyle(fontSize: 30)),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      operator = "*";
                    });
                  },
                  child: const Text("*", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "0";
                        showVal = num1;
                      } else {
                        num2 += "0";
                        showVal = num2;
                      }
                    });
                  },
                  child: const Text("0", style: TextStyle(fontSize: 30)),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      num1 = "";
                      num2 = "";
                      operator = "";
                      showVal = "0";
                      result = 0.0;
                    });
                  },
                  child: const Text("C", style: TextStyle(fontSize: 30)),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (num1 == "" || num2 == "") return;
                      if (operator == "+") {
                        result = double.parse(num1) + double.parse(num2);
                      } else if (operator == "-") {
                        result = double.parse(num1) - double.parse(num2);
                      } else if (operator == "*") {
                        result = double.parse(num1) * double.parse(num2);
                      } else if (operator == "/") {
                        if (double.parse(num2) != 0) {
                          result = double.parse(num1) / double.parse(num2);
                        } else {
                          showVal = "Error";
                          return;
                        }
                      }
                      showVal = result.toString();
                      num1 = result.toString();
                      num2 = "";
                      operator = "";
                    });
                  },
                  child: const Text("=", style: TextStyle(fontSize: 30)),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      operator = "/";
                    });
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