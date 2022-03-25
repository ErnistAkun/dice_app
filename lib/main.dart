import 'package:dice_app/pages/flutter%20pages/dice_page.dart';
import 'package:dice_app/pages/getx_page/dice_getx_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceGetXPage(),
    );
  }
}
