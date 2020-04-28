import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0.0, num2 = 0.0, res = 0.0;
  final TextEditingController t1 = TextEditingController(text: '');

  final TextEditingController t2 = TextEditingController(text: '');

  void add() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      res = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      res = num1 - num2;
    });
  }

  void prod() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      res = num1 * num2;
    });
  }

  void div() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      res = num1 / num2;
    });
  }
  void clear(){
    setState(() {
      t1.text='';
      t2.text='';
      res=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Output: $res',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'enter first no.'),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'enter second no.'),
                controller: t2,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                        color: Color(0xFF7986CB),
                        child: Text('+'),
                        onPressed: add),
                    RaisedButton(
                        color: Color(0xFF7986CB),
                        child: Text('-'),
                        onPressed: sub),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                        color: Color(0xFF7986CB),
                        child: Text('*'),
                        onPressed: prod),
                    RaisedButton(
                        color: Color(0xFF7986CB),
                        child: Text('/'),
                        onPressed: div),
                  ]),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                MaterialButton(
                  color: Colors.black,
                  child: Text(
                    'Clear',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: clear,
                ),
              ])
            ]),
      ),
    );
  }
}
