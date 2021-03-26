import 'package:c2less9schoolapp/UI_Screen/vars.dart';
import 'package:c2less9schoolapp/myWidget/bottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

class AboutAppScr extends StatefulWidget {
  @override
  _AboutAppScrState createState() => _AboutAppScrState();
}

class _AboutAppScrState extends State<AboutAppScr> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: myNavBar(context: context),
        backgroundColor: mainColor,
        body: SizedBox(
          //height: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 0.01 * MediaQuery.of(context).size.width,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                            Icons.arrow_forward_ios,
                            color: mainColor,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  SizedBox(
                    width: 0.02 * MediaQuery.of(context).size.width,
                  ),
                ],
              ),
              //new part
              //==========================================================
              SizedBox(
                height: 0.001 * MediaQuery.of(context).size.width,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    SizedBox(
                      width: 0.07 * MediaQuery.of(context).size.width,
                    ),
                    Text(
                      'ابحث عن مدرسة',
                      style: TextStyle(
                          fontFamily: font, color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 0.05 * MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      width: 0.05 * MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 0.05 * MediaQuery.of(context).size.width,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0.05 * MediaQuery.of(context).size.width,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 0.05 * MediaQuery.of(context).size.width,
                      ),

                      //========================
                      //-----
                      //=======
                      SizedBox(
                        height: 0.05 * MediaQuery.of(context).size.width,
                      ),

                      SizedBox(
                        height: 0.09 * MediaQuery.of(context).size.width,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//omarrrrrrrrrrrrrrrrrrrrrrrrrrrrr