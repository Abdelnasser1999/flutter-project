import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nasser/main.dart';

class ItemWidget extends StatelessWidget {
  String? image;

  ItemWidget({this.image});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 154,
      height: 179,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: Image.asset(
              image!,
              width: 110,
              height: 110,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'الخبز قمح',
            style: TextStyle(color: basicColor),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: basicColor),
                child: Icon(
                  Icons.shopping_cart,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Image.asset('assets/images/shekel.png'),
              Text('50'),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
