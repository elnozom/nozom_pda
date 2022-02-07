import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/unauthorized.controller.dart';

class UnauthorizedScreen extends GetView<UnauthorizedController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/lock.png',
              width: 150.0,
              height: 50.0,
            ),
            Text(
              "يبدو لنا ان الجهاز لم يتم تفعيله بعد علي قواعد بيناتنا لتفعيل الجهاز يرجي التواصل مع الدعم الفني",
              textAlign: TextAlign.center,
            ),
            Text(
              ":الرقم التعريفي للجهاز ",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ]),
    );
  }
}
