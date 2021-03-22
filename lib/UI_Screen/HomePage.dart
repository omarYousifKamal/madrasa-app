import 'package:c2less9schoolapp/UI_Screen/vars.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        children: [
          SizedBox(
            height: 0.08 * MediaQuery.of(context).size.width,
          ),
          Row(
            children: [
              SizedBox(
                width: 0.02 * MediaQuery.of(context).size.width,
              ),
              GestureDetector(
                child: Container(
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                  child: Container(
                    width: 0.12 * MediaQuery.of(context).size.width,
                    height: 0.12 * MediaQuery.of(context).size.width,
                    child: Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.close,
                        color: mainColor,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// Text(
//                 'بحث عن مدرسة ',
//                 style: TextStyle(
//                   fontFamily: ArabicFonts.Mada,
//                   package: 'google_fonts_arabic',
//                 ),
//               ),