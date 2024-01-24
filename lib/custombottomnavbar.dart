import 'package:eccomerce_applicationn/category.dart';
import 'package:eccomerce_applicationn/custom_button.dart';
import 'package:eccomerce_applicationn/home.dart';
import 'package:eccomerce_applicationn/sign_in.dart';
import 'package:flutter/material.dart';

class customnavbar extends StatefulWidget {
  const customnavbar({super.key});

  @override
  State<customnavbar> createState() => _customnavbarState();
}

class _customnavbarState extends State<customnavbar> {
  List<Widget> listwedgit = [
    Container(
      child: homepage(),
    ),
    Container(
      child: Category(),
    ),
    Container(
      child: homepage(),
    ),
    Container(
      child: homepage(),
    ),
    Container(
      child: Sign_In(),
    )
  ];
  int currentinsexnavbar = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentinsexnavbar = value;
            });
          },
          currentIndex: currentinsexnavbar,
          selectedItemColor: Colors.deepPurple,
          selectedIconTheme: IconThemeData(color: Colors.deepPurple),
          unselectedIconTheme: IconThemeData(color: Colors.black),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 35,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  size: 35,
                ),
                label: "Catergory"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 35,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  size: 35,
                ),
                label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                  size: 35,
                ),
                label: "Account")
          ]),
      body: listwedgit.elementAt(currentinsexnavbar),
    ));
  }
}
