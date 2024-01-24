import 'package:eccomerce_applicationn/custom_button.dart';
import 'package:eccomerce_applicationn/customtextfilled.dart';
import 'package:eccomerce_applicationn/sign_up.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Sign_In extends StatefulWidget {
  Sign_In({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  bool CheckboxListTile = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            color: Color.fromRGBO(241, 239, 239, 1),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              reverse: false,
              children: [
                Container(
                  margin: EdgeInsets.all(30),
                  child: ListTile(
                    title: Text(
                      "Welcome back!",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    subtitle: Text(
                      "login to your existing account",
                      style: TextStyle(fontSize: 13.6, color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Image.asset(
                    "images/logo_eco.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          "Email Address",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 7),
                        child: customtextfilled(
                          obscure: false,
                          hinttext: "e.g name@example.com",
                          mycontroller: widget.email,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 30),
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          "Password",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        padding: EdgeInsets.only(top: 7),
                        child: customtextfilled(
                          obscure: true,
                          hinttext: "e.g *******************",
                          mycontroller: widget.password,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Checkbox(
                          value: CheckboxListTile,
                          onChanged: (val) {
                            setState(() {
                              CheckboxListTile = val!;
                            });
                          }),
                    ),
                    Container(
                      child: Text(
                        "Remember me ",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 110),
                      child: Text(
                        "Forget password",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                Container(margin: EdgeInsets.only(top: 10),
                  child: custom_button(
                    title: "Login",
                    onPressed: () => Navigator.of(context).pop,
                  ),
                ),
                Container(
                  height: 35,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 130),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        radius: 33,
                        child: Image.asset("images/googlee.png"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        radius: 33,
                        child: Image.asset("images/facebook.png"),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 80),
                      child: Text(
                        "Don't have an account ",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Sign_Up(),)),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color.fromARGB(255, 106, 88, 203),
                        ),
                      ),
                    )
                  ],
                ),Container(height: 30,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
