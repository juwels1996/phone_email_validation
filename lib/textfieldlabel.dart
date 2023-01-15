import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  const TextFieldCustom({Key? key}) : super(key: key);

  @override
  _TextFieldCustomState createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  bool isRequired = false;
  final _formKey = GlobalKey<FormState>();


  bool isEmail(String input) => EmailValidator.validate(input);
  bool isPhone(String input) =>
      RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$')
          .hasMatch(input);

  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<FormFieldState>();
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            children:[ Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    validator:(value){
                      if(value==null || value.isEmpty){
                        return "please enter text";
                      }
                      return null;
                    },
                      decoration: InputDecoration(
                          //labelText: title ,  // you can change this with the top text  like you want
                          hintText: "Please enter your",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                          ),
                          // fillColor: Color(0xfff3f3f4),
                          filled: true,
                          label: Container(
                            child: Row(
                              children: [
                                Text("Display Name",
                                style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(width: 4,),
                                isRequired
                                    ? Text("data")
                                    : Text(
                                        "*",
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      )
                              ],
                            ),
                          ))),

                  SizedBox(height: 12,),
                   TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username", //babel text
                    hintText: "Enter your email", //hint text
                    prefixIcon: Icon(Icons.people), //prefix iocn
                    hintStyle: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold), //hint text style
                    labelStyle: TextStyle(
                        fontSize: 13, color: Colors.redAccent), //label style
                  )),
                  SizedBox(height: 10,),

                  TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: RichText(
                            text: TextSpan(
                          text: "",
                              style: TextStyle(color: Colors.black),
                              children: [

                                TextSpan(
                                text: "Display Name",
                                style: TextStyle(color: Colors.black),),


                                TextSpan(
                                  text: "*",
                                  style: TextStyle(color: Colors.red,fontSize: 16)
                                )
                              ]
                        ),



                        ),//babel text
                        hintText: "Enter your email", //hint text
                        prefixIcon: Icon(Icons.people), //prefix iocn
                        hintStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold), //hint text style
                        labelStyle: TextStyle(
                            fontSize: 13, color: Colors.redAccent), //label style
                      )),
                  SizedBox(height: 6,),
                  TextFormField(
                    key: _key,
                    validator: (value) {
                      if (!isEmail(value!) && !isPhone(value)) {
                        return 'Please enter a valid email or phone number.';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(16.0),
                      hintText: "Enter your phone number or email",
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                    ),
                  ),
                  SizedBox(height: 40,),


                  Center(
                    child:ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: const Text('Submit'),
                    ) ,
                  ),

                  Center(
                    child:ElevatedButton(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          // Navigate to next page
                        }
                      },
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(const EdgeInsets.all(0.0)),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor: MaterialStateProperty.all(Color(0xFF0D47A1))
                      ),
                      child: Text('Next', style: TextStyle(fontSize: 20)),
                    ),
                  )
                ],
            ),
          ]
          ),
        ),
      ),
          )),
    );
  }
}
