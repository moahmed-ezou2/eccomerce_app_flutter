import 'package:eccomerce_applicationn/custom_button.dart';
import 'package:eccomerce_applicationn/customtextfilled.dart';
import 'package:eccomerce_applicationn/details.dart';
import 'package:eccomerce_applicationn/splach_screen.dart';
import 'package:eccomerce_applicationn/stack.dart';

import 'package:flutter/material.dart';
import 'verification.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController home = TextEditingController();
  List images = [
    {"image": "images/laptops images eco.jpeg", "text": "Computers"},
    {"image": "images/laptops images eco.jpeg", "text": "Phone&accessories"},
    {"image": "images/laptops images eco.jpeg", "text": "Lights&Lighting"},
    {"image": "images/laptops images eco.jpeg", "text": "Office Equipments"}
  ];
  List product = [
    {
      "imageproduct": "images/printer eco.jpeg",
      "text1": "Bluetooth",
      "text2": "Printer",
      "price": "\$200.75"
    },
    {
      "imageproduct": "images/macbook.jpeg",
      "text1": "Macbook 22",
      "text2": "Air",
      "price": "\$2800.0"
    },
    {
      "imageproduct": "images/ipone.jpeg",
      "text1": "Iphone 14",
      "text2": "Pro Max",
      "price": "\$1459.0"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      color: Color.fromRGBO(241, 239, 239, 1),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: 250,
                  child: customtextfilled(
                    obscure: false,
                    mycontroller: home,
                    hinttext: " Search Product ",
                    icon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                  ),
                ),
                Container(
                  width: 12,
                ),
                CircleAvatar(
                  child: Icon(Icons.shopping_cart_outlined),
                  radius: 25,
                  backgroundColor: Colors.white,
                ),
                Container(
                  width: 9,
                ),
                CircleAvatar(
                  child: Icon(Icons.notifications_none),
                  radius: 25,
                  backgroundColor: Colors.white,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Special for you",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 130),
                  child: Text(
                    "see more ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            width: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
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
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 20),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Featured Prodect",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 110),
                  child: Text(
                    "see more ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 200,
            height: 250,
            child: ListView.builder(
              itemCount: product.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return detailsofproduct(
                      data: product[index],
                    );
                  },
                )),
                child: Row(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(left: 6, top: 10),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 0.5,
                                            offset: Offset.zero,
                                            spreadRadius: 0.5)
                                      ],
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  width: 130,
                                  height: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        bottomLeft: Radius.circular(50),
                                        topRight: Radius.circular(50),
                                        bottomRight: Radius.circular(50)),
                                    child: Image.asset(
                                      product[index]['imageproduct'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 110, left: 90),
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 30,
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30, top: 10),
                              child: Text(
                                product[index]['text1'],
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 50),
                              child: Text(
                                product[index]['text2'],
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30),
                              child: Text(
                                product[index]['price'],
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 20),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Best Selling Products ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 56),
                  child: Text(
                    "see more ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              print("yess sirr");
            },
            child: SizedBox(
              width: 200,
              height: 250,
              child: ListView.builder(
                itemCount: product.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, indexs) => Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 6, top: 10),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 0.5,
                                          offset: Offset.zero,
                                          spreadRadius: 0.5)
                                    ],
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                width: 130,
                                height: 150,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                      topRight: Radius.circular(50),
                                      bottomRight: Radius.circular(50)),
                                  child: Image.asset(
                                      product[indexs]['imageproduct']),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 110, left: 90),
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 30,
                                  color: Colors.deepPurple,
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30, top: 10),
                            child: Text(
                              product[indexs]['text1'],
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 50),
                            child: Text(
                              product[indexs]['text2'],
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30),
                            child: Text(
                              product[indexs]['price'],
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    )));
  }
}
