import 'package:c2less9schoolapp/UI_Screen/AboutAppScr.dart';
import 'package:c2less9schoolapp/UI_Screen/HomePage.dart';
import 'package:c2less9schoolapp/UI_Screen/vars.dart';
import 'package:flutter/material.dart';

myNavBar({@required BuildContext context}) {
  return BottomNavigationBar(
    onTap: (index) {
      switch (index) {
        case 0:
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomePage()));
          break;
        case 1:
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => AboutAppScr()));
          break;
        case 2:
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => AboutAppScr()));
          break;
      }
    },
    backgroundColor: mainColor,
    items: [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: secColor,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.message,
          color: secColor,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.account_box_outlined,
          color: secColor,
        ),
        label: '',
      ),
    ],
  );
}
