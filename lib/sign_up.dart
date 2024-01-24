import 'package:eccomerce_applicationn/custom_button.dart';
import 'package:eccomerce_applicationn/customtextfilled.dart';
import 'package:eccomerce_applicationn/sign_in.dart';
import 'package:eccomerce_applicationn/verification.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Sign_Up extends StatefulWidget {
  Sign_Up({super.key});
  TextEditingController name = TextEditingController();
  TextEditingController email= TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  State<Sign_Up> createState() => _Sign_UPState();
}

class _Sign_UPState extends State<Sign_Up> {
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
              Row(
                children: [
                  IconButton(
                      onPressed: () =>
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Sign_In(),
                          )),
                      icon: Icon(
                        Icons.arrow_back,
                        size: 25,
                        color: Colors.black,
                      ))
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: ListTile(
                  title: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    "please enter your information below to sign up",
                    style: TextStyle(fontSize: 13.6, color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
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
                        "Name",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                    Container(  
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: customtextfilled(
                        obscure: false,
                        hinttext: "please enter your name",
                        mycontroller: widget.name,
                      ),
                    )
                  ],
                ),
              ),        Container(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 30),
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Email",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                       padding: EdgeInsets.symmetric(vertical: 10),
                      child: customtextfilled(
                        obscure: false,
                        hinttext: "please enter your email",
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
                     
                      child: Text(
                        "Password",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                     padding: EdgeInsets.symmetric(vertical: 10),
                      child: customtextfilled(
                        obscure: true,
                        hinttext: "please enter your password",
                        mycontroller: widget.password,
                      ),
                    )
                  ],
                ),
              ),
         
              Container(
                margin: EdgeInsets.only(top: 10),
                child: custom_button(
                  title: "Login",
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => verification(),)),
                ),
              ),
           
           
              Container(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 80),
                    child: Text(
                      "Don't have an account",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Sign_In(),
                    )),
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Color.fromARGB(255, 106, 88, 203),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 50,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
