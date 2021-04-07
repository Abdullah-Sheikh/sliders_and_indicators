import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  double _value = 0.0;

  void _onchanged(double value)
  {
    setState(() {
      _value = value;
    });

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('My First App'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Slider(value: _value, onChanged: _onchanged),
            new Container(
              padding: new EdgeInsets.all(32.0),
              child: new LinearProgressIndicator(
                value: _value,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            ),
            new Container(
              padding: new EdgeInsets.all(32.0),
              child: new CircularProgressIndicator(
                value : _value,
              ),
            ),

          ],
        ),
      ),
    );
  }
}