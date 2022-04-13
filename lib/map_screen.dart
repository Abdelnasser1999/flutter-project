import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class MapScreen extends StatelessWidget {
  TextEditingController address = TextEditingController();
  TextEditingController address2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    address.text = 'غزة';
    address2.text = 'الرمال - برج وطن';
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'إضافة عنوان جديد',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: basicColor),
            ),
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: basicColor,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/map.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
                height: 190,
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 0.2,
                          spreadRadius: 4)
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'العنوان',
                              style: TextStyle(color: basicColor, fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 180,
                              child: TextFormField(
                                  controller: address2,
                                  textAlign: TextAlign.right,
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      filled: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 10),
                                      fillColor: Colors.white,
                                      errorStyle: TextStyle(fontSize: 14),
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 18),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide(
                                              color: Colors.white)))),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'المدينة',
                              style: TextStyle(color: basicColor, fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 100,
                              child: TextFormField(
                                  controller: address,
                                  textAlign: TextAlign.right,
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      filled: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 10),
                                      fillColor: Colors.white,
                                      errorStyle: TextStyle(fontSize: 14),
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 18),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide(
                                              color: Colors.white)))),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: basicColor,
                              borderRadius: BorderRadius.circular(8)),
                          height: 55,
                          width: 295,
                          child: Text(
                            'حدد الموقع',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
