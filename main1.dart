import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text(
                "Esraa Ayman",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 70,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Esraa Ayman",
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 75,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Esraa Ayman",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 65,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Esraa Ayman",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 80,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Esraa Ayman",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 72,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}