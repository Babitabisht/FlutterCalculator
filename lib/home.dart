import "package:flutter/material.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  doMult() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 / num2).ceil();
    });
  }

  doClear() {
    setState(() {
      t1.clear();
      t2.clear();
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: EdgeInsets.all(40.0),
        child: new Center(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Result is : $sum",
                style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold)),
            new TextField(
              decoration: new InputDecoration(
                hintText: "Enter First Number",
              ),
              keyboardType: TextInputType.number,
              controller: t1,
            ),
            new TextField(
              decoration: new InputDecoration(
                hintText: "Enter second Number",
              ),
              keyboardType: TextInputType.number,
              controller: t2,
            ),
            new Padding(
              padding: EdgeInsetsDirectional.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  child: new Text("Add"),
                  onPressed: doAddition,
                ),
                new RaisedButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  child: new Text("subtract"),
                  onPressed: doSub,
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  child: new Text("Multiply"),
                  onPressed: doMult,
                ),
                new MaterialButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  child: new Text("divide"),
                  onPressed: doDiv,
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  color: Colors.blueAccent,
                  child: new Text("C"),
                  onPressed: doClear,
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
