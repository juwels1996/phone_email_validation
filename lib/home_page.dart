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

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: Container(
          color: Colors.teal,
          margin: EdgeInsets.all(15),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: rightLudo,
                            child: Image.asset('assets/dice$leftDiceNumber.jpg')),
                      )),

                  Expanded(
                    flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: leftLudo,
                            child: Image.asset('assets/dice$rightDiceNumber.jpg')
                        ),
                      )),


                ],

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent.withOpacity(0.6)
                      ),
                      onPressed: (){
                        setState(() {
                          leftLudo();

                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Change Left"),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent.withOpacity(0.6)
                      ),
                      onPressed: (){
                        setState(() {
                          rightLudo();

                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Change Right"),
                      ))

                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
