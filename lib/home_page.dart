import 'dart:math';

import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int rightDiceNumber=1;
  int leftDiceNumber=3;


  void rightLudo(){
    setState(() {
      rightDiceNumber=Random().nextInt(6)+1;
    });

  }
  void leftLudo(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(

      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: TextButton(
                      onPressed: rightLudo,
                      child: Image.asset('assets/dice$leftDiceNumber.jpg'))),

              Expanded(
                  child: TextButton(
                      onPressed: leftLudo,
                      child: Image.asset('assets/dice$rightDiceNumber.jpg')
                  )),


            ],

          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
          primary: Colors.green.withOpacity(0.6)
          ),
              onPressed: (){},
              child: Text("Submit Submit"))
        ],
      ),
    );
  }
}
