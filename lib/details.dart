import 'package:eccomerce_applicationn/custom_button.dart';
import 'package:eccomerce_applicationn/home.dart';
import 'package:flutter/material.dart';

class detailsofproduct extends StatefulWidget {
  const detailsofproduct({super.key, this.data});
  final data;
  @override
  State<detailsofproduct> createState() => _DetailsofprosuctState();
}

class _DetailsofprosuctState extends State<detailsofproduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            color: Color.fromRGBO(241, 239, 239, 1),
            child: Stack(
              children: [
                ListView(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => homepage(),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 250,
                      child: Image.asset(widget.data['imageproduct']),
                    ),
                    Container(
                      child: SizedBox(
                        child: ListView(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30, top: 30),
                              child: Row(
                                children: [
                                  Text(
                                    widget.data['price'],
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 245),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 30, top: 10, bottom: 15),
                              child: Row(
                                children: [
                                  Text(
                                    widget.data['text1'],
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Container(
                                    width: 4,
                                  ),
                                  Text(
                                    widget.data['text2'],
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(left: 30, top: 10, bottom: 5),
                              child: Text(
                                "Descibtion",
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(left: 30, top: 2, bottom: 20),
                              child: Text(
                                "Desciption text for Eccomerce Application",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(left: 30, top: 5, bottom: 5),
                              child: Text(
                                "Color",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(left: 30, top: 2, bottom: 20),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 22,
                                  ),
                                  Container(
                                    width: 4,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    radius: 22,
                                  ),
                                  Container(
                                    width: 4,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.blueAccent,
                                    radius: 22,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(left: 30, top: 2, bottom: 5),
                              child: Text(
                                "Size",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 30,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        " 13",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      width: 35,
                                      height: 30,
                                    ),
                                    Container(
                                      width: 4,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        " 14",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      width: 35,
                                      height: 30,
                                    ),
                                    Container(
                                      width: 4,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        " 15",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      width: 35,
                                      height: 30,
                                    ),
                                    Container(
                                      width: 4,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        " 16",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      width: 35,
                                      height: 30,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: custom_button(
                                title: "ADD to cart",
                                onPressed: () => Navigator.of(context).pop,
                              ),
                            ),
                          ],
                        ),
                        width: double.infinity,
                        height: 900,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      width: double.infinity,
                      height: 900,
                    ),
                  ],
                ),
              ],
            )));
  }
}
