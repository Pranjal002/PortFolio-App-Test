import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context, '/login');
    });
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/1.jpg'),
              fit: BoxFit.cover,
            ),
          )),
          Positioned(
            left: 140,
              top: 250,
              child: Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/logos/resume.png',
                  width: 130,
                  height: 150,
                ),
              ),
              Text(
                "PORTFOLIO",
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
          Positioned(
              bottom: 50,
              left: 150,
              child:Column(
            children: [
              Text(
                "Developed By",
                style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Pranjal Dahal",
                style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),

            ],
          ) )

        ],


      ),
    );
  }
}
