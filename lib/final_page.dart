import 'package:flutter/material.dart';
class FinalPage extends StatefulWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  int index=0;
  
  void count(){
    setState(() {
      index++;
    });
   
    
    
  }
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController=TextEditingController();
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
                        style:TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black
                        ),
                          autofocus: true,

                          onPressed: (){},
                          child: Text("Button 1")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                          primary: Colors.red,
                          shadowColor: Colors.black
                        ),
                        autofocus: true,

                          onPressed: (){},
                          child: Text("Button 1")),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text('${index}',
                        style: TextStyle(color: Colors.white),),
                    ),
                    

                    ElevatedButton(onPressed: (){
                      count();
                    },
                        child: Icon(Icons.account_balance,
                        color: Colors.white,
                          size: 22,
                        ))

                  ],
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}
