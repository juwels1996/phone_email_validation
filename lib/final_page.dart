import 'package:flutter/material.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  double index = 0;
  double index2 = 1;

  void count() {
    setState(() {
      index += 2;
    });
  }

  subCount() {
    setState(() {
      index2 += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white60,
        body: Container(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.black),
                          autofocus: true,
                          onPressed: () {},
                          child: Text("Button 1")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.green,
                              primary: Colors.red,
                              shadowColor: Colors.black),
                          autofocus: true,
                          onPressed: () {},
                          child: Text("Button 1")),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'সংখ্যা হল জোড়=${index}',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                count();
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 22,
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () { },
                            child: Text(
                              "সংখ্যা হল বিজোড়=${index2}",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                subCount();
                              },
                              child: Icon(
                                Icons.description,
                                color: Colors.white,
                                size: 22,
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
