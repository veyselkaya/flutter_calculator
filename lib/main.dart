import 'package:flutter/material.dart';
import './secondPage.dart';
import './calculator.dart';
import 'package:flutter/cupertino.dart';



void main() => runApp(
  MaterialApp(
    theme: ThemeData(
      hintColor: Colors.black,
      inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        color: Colors.yellow,
      ),
      labelStyle: TextStyle(
        color: Colors.red,
      ),
    ),
    ),
 
      home: MyApp(
        
      ),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mathematics'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              MediaQuery(
                child: Center(
                  child: Card(
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: RaisedButton(
                          child: Text("Calculator"),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Calculator()));
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                data: MediaQueryData(
                    size: Size.zero,
                    accessibleNavigation: true,
                    boldText: true,
                    invertColors: true,
                    textScaleFactor: 3.0,
                    alwaysUse24HourFormat: true,
                    devicePixelRatio: 30.0,
                    disableAnimations: true,
                    viewInsets: EdgeInsets.all(0.0),
                    padding: EdgeInsets.all(0.0)),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Card(
                  color: Colors.grey,
                  child: Center(
                    child: CupertinoButton(
                      child: Text("Second Page"),
                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondPage()));
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
