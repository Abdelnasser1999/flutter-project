import 'package:flutter/material.dart';
import 'package:nasser/product_screen.dart';

import 'item_screen.dart';
import 'login_screen.dart';
import 'map_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ItemScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/pic1.png',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'مخابز غزة الهاشم',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: basicColor),
          ),
          SizedBox(
            height: 20,
          ),
          Text('مخابز غزة الهاشم تضم أفضل مخابز قطاع غزة'),
          Text(' وتوفر للزبون منتوجات كل مخبز على حدا'),
          Text(' وتقدم خدمة التوصيل'),
          SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}

Color basicColor = Color(0xff5C3A00);
Color backgroundColor = Color(0xffF2F2F2);
