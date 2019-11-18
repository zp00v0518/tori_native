import 'package:flutter/material.dart';
import '../styles/index.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  double padding = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: TextFormField(
                    style: TextStyle(fontSize: baseFontSize),
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'Login',
                      labelStyle: TextStyle(fontSize: labelSize),
                    ),
                  ),
                ),
                SizedBox(height: padding + 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(fontSize: baseFontSize),
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock_open),
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: labelSize),
                    ),
                  ),
                ),
                SizedBox(height: labelSize * 3),
                FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  // child: Text("Submit", style: TextStyle(fontSize: baseFontSize)),
                  child: Text("Submit", style: TextStyle(fontSize: labelSize)),
                  onPressed: () => {},
                ),
                SizedBox(height: labelSize * 3),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Text("Submit",
                      style: TextStyle(
                          letterSpacing: 3,
                          fontSize: labelSize,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                )
                // Container(
                //   decoration: BoxDecoration(
                //       border: Border.all(width: 2, color: Colors.blue),
                //       borderRadius: BorderRadius.all(Radius.circular(30))),
                //   child: FlatButton(
                //     // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                //     color: Colors.blue,
                //     textColor: Colors.white,
                //     child:
                //         Text("Submit", style: TextStyle(fontSize: labelSize)),
                //     onPressed: () => {},
                //   ),
                // )
              ],
            ),
          ),
        ));
  }
}
