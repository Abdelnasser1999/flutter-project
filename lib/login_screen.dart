import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: basicColor),
                ),
                SizedBox(
                  width: 30,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Image.asset(
              'assets/images/login.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            )),
            SizedBox(
              height: 60,
            ),
            TextFormField(
                textAlign: TextAlign.right,
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    fillColor: Colors.white,
                    errorStyle: TextStyle(fontSize: 14),
                    hintText: 'البريد الالكترونى او رقم الجوال',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.white)))),
            SizedBox(
              height: 10,
            ),
            TextFormField(
                textAlign: TextAlign.right,
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    prefixIcon: Image.asset('assets/images/eye.png'),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    fillColor: Colors.white,
                    errorStyle: TextStyle(fontSize: 14),
                    hintText: 'كلمة المرور',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.white)))),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  'هل نسيت كلمة المرور؟',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: basicColor, borderRadius: BorderRadius.circular(8)),
              height: 55,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'تسجيل الدخول',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'انشاء حساب جديد',
              style: TextStyle(decoration: TextDecoration.underline),
            )
          ],
        ),
      ),
    );
  }
}
