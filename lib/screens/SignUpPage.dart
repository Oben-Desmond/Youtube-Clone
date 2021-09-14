import 'dart:ui';

import 'package:first_flutter_app/screens/LoginPage.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class SignUpPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Login'),
        // ),
        body: SafeArea(
            child: Stack(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Create Vizu Account',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 27,
                      color: Colors.orange),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange)),
                    labelText: 'Password',
                  ),
                  cursorColor: Colors.orange,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: OutlinedButton(
                    style: TextButton.styleFrom(primary: Colors.orange),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Process data.
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text(
              'LOG IN',
              style: TextStyle(color: Colors.orange),
            ),
            style: TextButton.styleFrom(primary: Colors.orange),
          ),
          bottom: 15,
          left: 25,
        ),
      ],
    )));
  }
}
