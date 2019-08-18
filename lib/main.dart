import "package:flutter/material.dart" ;
import 'home.dart';

void main() => runApp( new myCalculator()) ;

class myCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:"aa",
      theme: ThemeData(accentColor: Colors.amber,
                primarySwatch: Colors.amber
              ),
    home : new Home()
    );
  }
}
