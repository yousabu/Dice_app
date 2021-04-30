import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int dice_no = 1;
  void update() {
    setState(() {
      //Random.nextInt(n) returns random integer from 0 to n-1
      dice_no = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('GFG | Dice'),
        backgroundColor: Color.fromRGBO(15, 157, 88, 1),
      ),
      body:  Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: FlatButton(
              child: Image.asset('images/dice$dice_no.png'),
              onPressed: () {
                update();
              },
            ),
          ),
        ),
      )
    );
  }
}
