import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nozom_pda/presentation/shared/base.widget.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(child:  Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    ));
  }
}
