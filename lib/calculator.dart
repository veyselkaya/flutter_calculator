import 'package:flutter/material.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double sayi1 = 0, sayi2 = 0, sonuc = 0;
  double kok = 0;

  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");

  void toplama() {
    setState(() {
      sayi1 = double.parse(t1.text);
      sayi2 = double.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  void cikarma() {
    setState(() {
      sayi1 = double.parse(t1.text);
      sayi2 = double.parse(t2.text);

      sonuc = sayi1 - sayi2;
    });
  }

  void carpma() {
    setState(() {
      sayi1 = double.parse(t1.text);
      sayi2 = double.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  void bolme() {
    setState(() {
      sayi1 = double.parse(t1.text);
      sayi2 = double.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  void temizle() {
    setState(() {
      t1.text = "";
      t2.text = "";
      sonuc = 0;
    });
  }

  void usal() {
    setState(() {
      sayi1 = double.parse(t1.text);
      sayi2 = double.parse(t2.text);
      sonuc = pow(sayi1, sayi2);
    });
  }

  void kokal() {
    setState(() {
      sayi1 = double.parse(t1.text);
      kok = double.parse(t2.text);
      sonuc = pow(sayi1, 1 / kok);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 5.0,
            color: Colors.lime,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          ),
        ),
        margin: EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: Center(
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            color: Colors.lime.shade300,
                            width: double.infinity,
                            height: 50.0,
                            child: Center(
                              child: new Text(
                                "Result",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            height: 2.0,
                            width: double.infinity,
                            color: Colors.black,
                          ),
                          Container(
                            color: Colors.redAccent,
                            width: double.infinity,
                            height: 50.0,
                            child: Center(
                              child: new Text(
                                "$sonuc",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                          ),
                          TextField(
                            autofocus: true,
                            cursorColor: Colors.red,
                            style: TextStyle(fontSize: 15.0),
                            keyboardType: TextInputType.number,
                            decoration: new InputDecoration(
                              isDense: true,
                              hintText: "write first number",
                              labelText: "first number",
                              suffixText: "first number",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.lime,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                            ),
                            controller: t1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                          ),
                          TextField(
                            autofocus: true,
                            style: TextStyle(fontSize: 15.0),
                            keyboardType: TextInputType.number,
                            decoration: new InputDecoration(
                              isDense: true,
                              hintText: "write second number",
                              labelText: "second number",
                              suffixText: "second number",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                            ),
                            controller: t2,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.yellow,
                                child: IconButton(
                                  icon: new Icon(FontAwesomeIcons.plus,
                                  color: Colors.red,

                                  ),
                                  splashColor: Colors.yellow,
                                  onPressed: toplama,
                                ),
                              ),

                               CircleAvatar(
                                 backgroundColor: Colors.yellow,
                                 child: IconButton(
                                  icon: new Icon(FontAwesomeIcons.minus,
                                  color: Colors.red,
                                  
                                  ), 
                                  onPressed: cikarma,
                              ),
                               ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                               CircleAvatar(
                                 backgroundColor: Colors.yellow,
                                 child: IconButton(
                                  icon: new Icon(FontAwesomeIcons.times,
                                  color: Colors.red,
                                  
                                  ), 
                                  onPressed: carpma,
                              ),
                               ),
                              CircleAvatar(
                                backgroundColor: Colors.yellow,
                                child: IconButton(
                                  icon: new Icon(FontAwesomeIcons.divide,
                                  color: Colors.red,
                                  
                                  ), 
                                  onPressed: bolme,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.yellow,
                                child: IconButton(
                                  icon: new Icon(FontAwesomeIcons.superscript,
                                  color: Colors.red,
                                  
                                  ), 
                                  onPressed: usal,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.yellow,
                                child: IconButton(
                                  icon: new Icon(FontAwesomeIcons.squareRootAlt,
                                  color: Colors.red,
                                  
                                  ), 
                                  onPressed: kokal,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              MaterialButton(
                                elevation: 2.0,
                                splashColor: Colors.yellow,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                  
                                  ],
                                ),
                                color: Colors.red,
                                onPressed: temizle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}

TextStyle kirmizi() {
  return TextStyle(color: Colors.red, fontSize: 13.0);
}
