import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen3(),
    );
  }
}

class Screen3 extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 250),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text("Email", style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue
                    )),
                    hintText: "Enter Your Email",
                    border: OutlineInputBorder(),
                  ),
                  validator: (text) {
                    if ((text ?? '').length < 5) {
                      return 'Email must be grater than 5 char';
                    } else {
                      return null;
                    }
                  }
                ),
                SizedBox(height: 25),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text("Password", style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue
                    )),
                    hintText: "Enter Your Password",
                    border: OutlineInputBorder(),
                  ),
                  validator: (text) {
                    if ((text ?? '').length < 6) {
                      return 'Password must be grater than 5 char';
                    } else {
                      return null;
                    }
                  }
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Login Successful"))
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Error"))
                      );
                    }
                  },
                  child: Text("Validate")
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}