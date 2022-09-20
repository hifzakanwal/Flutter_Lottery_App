import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: new Title(
                child: Center(child: Text("Check Luck")),
                color: Colors.red,
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    "Wining number is 4",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.7),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(45),
                        child: x == 4
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.done_all,
                                    color: Color.fromARGB(255, 5, 167, 11),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Your number is 4, Congratulations"),
                                ],
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.error,
                                    color: Color.fromARGB(255, 247, 23, 7),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Your number is $x, try again",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                      )),
                ],
              ),
            ),
            floatingActionButton: new FloatingActionButton(
              onPressed: () {
                x = random.nextInt(10);
                setState(() {});
              },
              child: Icon(Icons.refresh),
            )));
  }
}
