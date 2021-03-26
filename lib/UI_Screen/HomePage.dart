// ignore: unused_import
import 'package:c2less9schoolapp/UI_Screen/AboutAppScr.dart';
import 'package:c2less9schoolapp/UI_Screen/vars.dart';
import 'package:c2less9schoolapp/myWidget/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedGov, selectedTarbyah;
  List<String> tars = <String>[];
  @override
  void initState() {
    super.initState();
    tars.add('الكرخ الاولى');
    tars.add('الرصافة الثانية');
  }

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
                height: 0.08 * MediaQuery.of(context).size.width,
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
                            Icons.close,
                            color: mainColor,
                            size: 45,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      // exit(0);
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
                height: 0.08 * MediaQuery.of(context).size.width,
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
                      Container(
                        width: 0.8 * MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.all(Radius.circular(9))),
                        child: DropdownButton(
                          isExpanded: true,
                          underline: SizedBox(),
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: mainColor,
                            size: 25,
                          ),
                          value: selectedGov,
                          hint: Text(
                            'المحافظة',
                            style: TextStyle(fontFamily: font),
                          ),
                          onChanged: (value) {
                            setState(() {
                              selectedGov = value;
                            });
                          },
                          items: govs
                              .map<DropdownMenuItem>(
                                (oneGov) => DropdownMenuItem(
                                  child: Text(
                                    oneGov,
                                    style: TextStyle(fontFamily: font),
                                    textDirection: TextDirection.rtl,
                                  ),
                                  value: oneGov,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      //========================
                      //-----
                      //=======
                      SizedBox(
                        height: 0.05 * MediaQuery.of(context).size.width,
                      ),
                      Container(
                        width: 0.8 * MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.all(Radius.circular(9))),
                        child: DropdownButton(
                          isExpanded: true,
                          underline: SizedBox(),
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: mainColor,
                            size: 25,
                          ),
                          value: selectedTarbyah,
                          hint: Text(
                            'المنطقة التربوية',
                            style: TextStyle(fontFamily: font),
                          ),
                          onChanged: (value) {
                            setState(() {
                              selectedTarbyah = value;
                            });
                          },
                          items: tars
                              .map<DropdownMenuItem>(
                                (oneGov) => DropdownMenuItem(
                                  child: Text(
                                    oneGov,
                                    style: TextStyle(fontFamily: font),
                                    textDirection: TextDirection.rtl,
                                  ),
                                  value: oneGov,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      SizedBox(
                        height: 0.09 * MediaQuery.of(context).size.width,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            color: Colors.grey.shade300,
                          ),
                          child: Container(
                            width: 0.20 * MediaQuery.of(context).size.width,
                            height: 0.20 * MediaQuery.of(context).size.width,
                            child: Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.search,
                                color: mainColor,
                                size: 55,
                              ),
                            ),
                          ),
                        ),
                      )
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
// Text(
//                 'بحث عن مدرسة ',
//                 style: TextStyle(
//                   fontFamily: ArabicFonts.Mada,
//                   package: 'google_fonts_arabic',
//                 ),
//               ),
// Icon(
//                             Icons.close,
//                             color: mainColor,
//                             size: 45,
//                           ),
// Container(
//                       decoration: new BoxDecoration(
//                         borderRadius: BorderRadius.circular(20.0),
//                         color: Colors.white,
//                       ),
//                       child: Container(
//                         width: 0.12 * MediaQuery.of(context).size.width,
//                         height: 0.12 * MediaQuery.of(context).size.width,
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Icon(
//                             Icons.close,
//                             color: mainColor,
//                             size: 45,
//                           ),
//                         ),
//                       ),
//                     ),omarrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr