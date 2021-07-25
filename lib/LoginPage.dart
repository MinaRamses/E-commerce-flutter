import 'package:amitfinal/HomePage.dart';
import 'package:flutter/material.dart';
import 'RegisterApp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
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
        // validator: (value) {
        //   if (value.contains('*') || value.contains('#') || value.isEmpty) {
        //     return 'Please a valid name';
        //   }
        //   return null;
        // },
      ),

    ),
  );
}

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _pass1 = TextEditingController();
  final TextEditingController _email1 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                child: Image(image: AssetImage('images/amitlogo.png') ,),
                width: 300,
                height: 250,
              ),
              SizedBox(
                height: 15,
              ),
              CreateTextField("Please enter your email", Icon(Icons.email), _email1, false),
              SizedBox(
                height: 15,
              ),
              CreateTextField("Please enter your password", Icon(Icons.vpn_key), _pass1, true),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                  padding: EdgeInsets.symmetric( horizontal: 60)
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text('Login'),

              ),
              SizedBox(
                height: 15,
              ),
              Column(
                  children:[
                    Text("Don't have an account yet ?\n",
                      style: TextStyle(
                          color: Colors.black),),

                    InkWell(
                        child: Text( "Click here to Sign Up",
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline ),
                        ), onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => RegisterApp()),
                      );
                    }
                    )
                  ]

              ),
            ],
          ),
        ),
      ),
    );
  }
}

