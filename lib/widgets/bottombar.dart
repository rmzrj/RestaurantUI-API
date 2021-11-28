import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: currentindex,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      onItemSelected: (index) {
        setState(() {
          currentindex = index;
        });
      },
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            activeColor: kPrimaryColor,
            inactiveColor: kSecondaryColor),
        BottomNavyBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            activeColor: kPrimaryColor,
            inactiveColor: kSecondaryColor),
        BottomNavyBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text("Cart"),
            activeColor: kPrimaryColor,
            inactiveColor: kSecondaryColor),
      ],
    );
  }
}
