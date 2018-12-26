import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IkinciSayfa extends StatefulWidget {
  @override
  _IkinciSayfaState createState() => _IkinciSayfaState();
}

class _IkinciSayfaState extends State<IkinciSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Card(
                  child: Center(
                    child: CupertinoNavigationBarBackButton(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Card(
                  child: Center(
                    child: Text("Test"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
