import 'dart:ffi';

import 'package:flutter/material.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/1.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
              left: 140,
              top: 150,
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/logos/resume.png',
                      width: 130,
                      height: 100,
                    ),
                  ),
                  Text(
                    "PORTFOLIO",
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              )),
          Positioned(
            top: 315,
            child: Container(
              width: 411,
              height: 560,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                    )
                  ]),
              child: Column(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    child: TextField(
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefix: Icon(Icons.person),
                          hintText: '    Email',
                          hintStyle: TextStyle(fontStyle: FontStyle.italic),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    child: TextField(
                      obscureText: _obscureText,
                      obscuringCharacter: '*',
                      autofocus: true,
                      decoration: InputDecoration(
                          prefix: Icon(Icons.lock),
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                            onPressed: _togglePasswordVisibility,
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    Navigator.popAndPushNamed(context, '/dash_board');

                  }, child: Text('LOGIN'))


                ],
              ),
            ),
          )

          // Positioned(
          //   top: 250,
          //
          //
          //     child:
          //       Container(
          //         width: double.infinity,
          //         color: Colors.white,
          //         child: Column(
          //
          //         ),
          //       )),
          //
        ],
      ),
    );
  }
}
