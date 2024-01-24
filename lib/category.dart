import 'package:eccomerce_applicationn/customtextfilled.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  TextEditingController categorycontrol = TextEditingController();
  List images = [
    {"image": "images/laptops images eco.jpeg", "text": "Computers"},
    {"image": "images/laptops images eco.jpeg", "text": "Phone&accessories"},
    {"image": "images/laptops images eco.jpeg", "text": "Lights&Lighting"},
    {"image": "images/laptops images eco.jpeg", "text": "Office Equipments"}
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        color: Color.fromRGBO(241, 239, 239, 1),
        width: double.infinity,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 132, top: 30),
              child: Text(
                "Categories",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 28),
                  width: 360,
                  child: customtextfilled(
                    obscure: false,
                    mycontroller: categorycontrol,
                    hinttext: " Search Category ",
                    icon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 20,
            ),
            SizedBox(
              width: 300,
              height: 500,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 1,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    height: 50,
                    width: 500,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 0,
                        mainAxisExtent: 160,
                      ),
                      itemCount: images.length,
                      itemBuilder: (context, i) => Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 1, left: 7, right: 5),
                            width: 340,
                            height: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                              child: Image.asset(
                                images[i]['image'],
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(images[i]['text']),
                            margin: EdgeInsets.only(left: 20, top: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
