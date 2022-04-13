import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nasser/item_widget.dart';
import 'package:nasser/product_screen.dart';

import 'main.dart';

class ItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundColor,
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
        backgroundColor: backgroundColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/pngegg.png',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/shekel.png'),
                Text(
                  '50',
                  style: TextStyle(
                      fontSize: 18,
                      color: basicColor,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  'الخبز قمح',
                  style: TextStyle(
                      fontSize: 18,
                      color: basicColor,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'مجموعة مخابز اليازجي في قطاع غزة لجميع أنواع المخبوزات \nوالمعجنات والكيك',
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    width: 80,
                    height: 45,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.favorite_border,
                      color: basicColor,
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  width: 45,
                  height: 45,
                  alignment: Alignment.center,
                  child: Text(
                    '--',
                    style: TextStyle(
                        letterSpacing: -5,
                        color: Colors.grey[700],
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  width: 135,
                  height: 45,
                  alignment: Alignment.center,
                  child: Text(
                    '01',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: basicColor,
                      borderRadius: BorderRadius.circular(5)),
                  width: 45,
                  height: 45,
                  alignment: Alignment.center,
                  child: Text(
                    '+',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: basicColor, borderRadius: BorderRadius.circular(8)),
            height: 55,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'أضف إلى السلة',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'عرض الكل',
                    style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        color: basicColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    'أحدث المنتجات',
                    style: TextStyle(
                        fontSize: 20,
                        color: basicColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )),
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (_, index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: ItemWidget(
                  image: background[index],
                ),
              ),
              itemCount: background.length,
            ),
          ),
        ],
      ),
    );
  }
}
