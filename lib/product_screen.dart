import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nasser/main.dart';

import 'item_widget.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.search,
          color: basicColor,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'كعك',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: basicColor),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: basicColor,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              mainAxisExtent: 190),
          itemBuilder: (_, index) => ItemWidget(
            image: background[index],
          ),
          itemCount: background.length,
        ),
      ),
    );
  }
}

List<String> background = [
  'assets/images/pngegg.png',
  'assets/images/pngegg (1).png',
  'assets/images/pngegg (2).png',
  'assets/images/pngegg (3).png',
  'assets/images/pngegg (7).png',
  'assets/images/pngegg (10).png',
  'assets/images/pngegg (18).png',
  'assets/images/pngegg (18).png',
  'assets/images/pngegg (18).png',
];
