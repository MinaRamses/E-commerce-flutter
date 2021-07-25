import 'package:amitfinal/HomePage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';


class RegisterApp extends StatefulWidget {
  const RegisterApp({Key key}) : super(key: key);
  @override
  _RegisterAppState createState() => _RegisterAppState();
}


class _RegisterAppState extends State<RegisterApp> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: MyHome()
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

Widget CreateTextField(String hinttext, Widget icon, TextEditingController t, bool isPass){
  String x = hinttext;
  Widget y = icon;
  return Padding(
    padding: EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.circular(10.0),),
      child: TextFormField(
        obscureText: isPass,
        decoration: InputDecoration(
            hintText: x,
            prefixIcon: y,
            border: OutlineInputBorder()
        ),
        controller: t,
      ),
    ),
  );
}

class _MyHomeState extends State<MyHome> {
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              SizedBox(
                height: 10,
              ),
              Container(
                child: Image(image: AssetImage('images/amitlogo.png') ,),
                width: 300,
                height: 250,
              ),

              // CreateText('Name:'),

              CreateTextField("Please enter your name", Icon(Icons.drive_file_rename_outline), _name, false),

              SizedBox(
                height: 15,
              ),

              CreateTextField("Please enter your email", Icon(Icons.email), _email, false),

              SizedBox(
                height: 15,
              ),

              CreateTextField("Please enter your password", Icon(Icons.vpn_key), _pass, true),


              SizedBox(
                height: 45,
              ),


              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                  padding: EdgeInsets.symmetric( horizontal: 60),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text('Sign Up'),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: RichText(
                    text: TextSpan(
                        text:  "Already have an account..? Login",
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline ),
                        recognizer: TapGestureRecognizer() .. onTap =() {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        }
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

