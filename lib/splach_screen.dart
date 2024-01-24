import 'dart:async';

import 'package:eccomerce_applicationn/sign_in.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class splash_sceen extends StatefulWidget {
  const splash_sceen({super.key});

  @override
  State<splash_sceen> createState() => _splashState();
}

class _splashState extends State<splash_sceen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Sign_In(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(
        children: [
          // Container(height: double.infinity,
          //   width: double.infinity,
          //   child: Image.asset(
          //     "images/imageseco.jpeg",
          //     fit: BoxFit.fill,
          //   ),
          // ),
          Container(
            child: Container(
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 0, top: 270),
                      alignment: Alignment.center,
                      child: Image.asset(
                        "images/logo_eco.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      child: Text(
                        "Ecommerce UI THEME ",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 106, 88, 203),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
