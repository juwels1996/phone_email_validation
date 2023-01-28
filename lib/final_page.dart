import 'package:flutter/material.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  double index = 0;
  double index2 = 1;
  double index3=50;
  double div=0;
  double mul=1;
  double mul1=0;
  double index5=0;
  TextEditingController textEditingController = TextEditingController();

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

  divider(){
    setState(() {
     div=index3/=2;
    });
  }

  multiplication(){
    setState(() {
      index5=mul*mul++;
      mul1++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
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
                          child: Text("তাসকিনের গণিত বই")),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height:40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(12),

                                ),
                                color: Colors.blue
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 14,right: 14,top: 8,bottom: 8),
                              child: Text(
                                "সংখ্যা হল জোড়=${index}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
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
                          Container(
                            height:40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(12),

                              ),
                              color: Colors.white.withOpacity(0.8)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "সংখ্যা হল বিজোড়=${index2}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
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
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height:40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(12),

                                ),
                                color: Colors.white
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "ভাগফল হলো= ${index3}/2 = ${div}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                divider();
                              },
                              child: Icon(
                                Icons.description,
                                color: Colors.white,
                                size: 22,
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 30,right: 30),
                              height:40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12),

                                  ),
                                  color: Colors.blue.withOpacity(0.4)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "বর্গফল  ${(mul1)}= $index5",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                multiplication();
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
