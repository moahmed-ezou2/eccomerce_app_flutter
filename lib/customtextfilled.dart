import 'main.dart';
import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'category.dart';

class customtextfilled extends StatefulWidget {
  const customtextfilled(
      {super.key, this.hinttext, required this.obscure, required this.mycontroller, this.icon});
  final String? hinttext;
  final TextEditingController mycontroller;
  final bool obscure;
  final Icon?icon; 
  @override
  State<customtextfilled> createState() => _customtextfilledState();
}

class _customtextfilledState extends State<customtextfilled> {
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 360,
        child: TextFormField(obscureText: widget.obscure,
          controller: widget.mycontroller,
          decoration: InputDecoration(prefixIcon:widget.icon ,focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color.fromARGB(255, 24, 129, 182))), 
              hintText: widget.hinttext,
              hintStyle: TextStyle(fontSize: 16, color: Color.fromARGB(255, 71, 71, 71)),
              contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white))),
        ));
  }
}
