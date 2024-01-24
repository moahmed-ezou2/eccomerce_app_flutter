import 'package:flutter/material.dart';
import 'home.dart';
class STACK_home extends StatefulWidget {
  const STACK_home({super.key});

  @override
  State<STACK_home> createState() => _STACKState();
}

class _STACKState extends State<STACK_home> {
      List images = [
    {"image": "images/laptops images eco.jpeg", "text": "Computers"},
    {"image": "images/laptops images eco.jpeg", "text": "Computers"},
    {"image": "images/laptops images eco.jpeg", "text": "Computers"},
    {"image": "images/laptops images eco.jpeg", "text": "Computers"}
  ];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemBuilder: (context, i) => Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 20),
            width: 300,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              child: Image.asset(
                images[i]['image'],
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            child: Text(images[i]['text']),
            margin: EdgeInsets.only(left: 50, top: 25),
          )
        ],
      ),
      itemCount: images.length,
    );
  }
}