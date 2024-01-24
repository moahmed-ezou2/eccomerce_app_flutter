import 'package:eccomerce_applicationn/custom_button.dart';
import 'package:eccomerce_applicationn/custombottomnavbar.dart';
import 'package:eccomerce_applicationn/home.dart';
import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'main.dart';
import 'package:pinput/pinput.dart';

class verification extends StatefulWidget {
  const verification({super.key});

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  final deafultpintheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: TextStyle(fontSize: 22, color: Colors.black),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              blurStyle: BlurStyle.outer,
            )
          ],
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.transparent)));
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
                                  onPressed: () => Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => Sign_Up(),
                                      )),
                                  icon: Icon(
                                    Icons.arrow_back,
                                    size: 25,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.all(20),
                              child: ListTile(
                                title: Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    "Verification",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                subtitle: Text(
                                  "please enter the OPT code sent to you by SMS",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              )),
                          Container(
                            height: 20,
                          ),
                          Center(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 80),
                                      child: Pinput(
                                        enabled: true,
                                        enableSuggestions: true,
                                        length: 4,
                                        defaultPinTheme: deafultpintheme,
                                        focusedPinTheme:
                                            deafultpintheme.copyWith(
                                                decoration: deafultpintheme
                                                    .decoration!
                                                    .copyWith(
                                                        border: Border.all(
                                                            color:
                                                                Colors.black))),
                                        onCompleted: (pin) => debugPrint(pin),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 20),
                                margin: EdgeInsets.only(left: 100),
                                child: Text(
                                  "Didn't get a code?",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20),
                                child: MaterialButton(
                                  onPressed: () => Navigator.of(context)
                                      .push(MaterialPageRoute(
                                    builder: (context) => verification(),
                                  )),
                                  child: Text(
                                    "Sent Again",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 106, 88, 203),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 350,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: custom_button(
                              title: "Verify",
                              onPressed: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => customnavbar(),
                              )),
                            ),
                          ),
                          Container(
                            height: 300,
                          ),
                        ])))));
  }
}
