import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login>{
  final _loginKey = GlobalKey<FormState>();
  final _passwordKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(156, 214, 228, 1.0),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 200, 0, 5),
                  child: Text(
                    "Log to your account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color.fromRGBO(0, 60, 0, 1.0)
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 300,
                    child: Form(
                      key: _loginKey,
                      child: TextFormField(
                        controller: emailController,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 60, 0, 1.0),
                        ),
                        cursorColor: Color.fromRGBO(0, 60, 0, 1.0),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(80, 200, 120, 1.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(80, 200, 120, 1.0), width: 2.0),
                          ),
                          labelText: 'Login',
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(0, 60, 0, 1.0),
                          ),
                          errorStyle: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Field cannot be empty';
                          } else if (1==1) {
                            return 'Invalid email';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 300,
                    child: Form(
                      key:_passwordKey,
                      child: TextFormField(
                        controller: passwordController,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 60, 0, 1.0),
                        ),
                        cursorColor: Color.fromRGBO(0, 60, 0, 1.0),
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(80, 200, 120, 1.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(80, 200, 120, 1.0), width: 2.0),
                          ),
                          labelText: 'Password combination:',
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(0, 60, 0, 1.0),
                          ),
                          errorStyle: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Field cannot be empty';
                          } else if (1==1) {
                            return 'Invalid password length';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ),
                  //TODO login button
              ],
            ),
          ),
        ),
      )
    );
  }
}