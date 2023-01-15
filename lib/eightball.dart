import 'dart:math';

import 'package:flutter/material.dart';
class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int questionindex=1;
  int questionindex2=3;

   count(){
    setState(() {
      questionindex=Random().nextInt(5)+1;
    });

  }
  countincrease(){
    setState(() {
      questionindex2=Random().nextInt(5)+1;
    });

  }




  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: countincrease,
                  child: Image.asset('assets/ball$questionindex.png'))),

          Expanded(
              child: TextButton(
                  onPressed: count,
                  child: Image.asset('assets/ball$questionindex2.png')
              ))
        ],

      ),
    );
  }
}