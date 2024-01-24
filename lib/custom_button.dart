import 'main.dart';
import 'package:flutter/material.dart';
import 'sign_in.dart';

class custom_button extends StatefulWidget {
  const custom_button({super.key, required this.title, this.onPressed});

  final String title;
  final void Function()? onPressed;
  @override
  State<custom_button> createState() => _custom_buttonState();
}

class _custom_buttonState extends State<custom_button> {
  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(20),
        width: 360,
        child: MaterialButton(
          // shape: Border.symmetric(
          //     vertical: BorderSide(
          //         width: 20,
          //         color: Color.fromRGBO(168, 130, 130, 1),
          //         style: BorderStyle.solid)),
          height: 60,
          minWidth: 20,
          color: Color.fromARGB(255, 106, 88, 203),
          textColor: Colors.white,
          onPressed: widget.onPressed,
          child: Text(widget.title),
        ));
  }
}
