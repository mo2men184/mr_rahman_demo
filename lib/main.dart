import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rugby_eat/view/cuisine_view.dart';
import 'package:rugby_eat/view/home_view.dart';
import 'package:rugby_eat/view/restaurant_view.dart';
import 'package:rugby_eat/view/search_result_view.dart';

void main() {
  runApp(RugbyEat());
}

class RugbyEat extends StatelessWidget {
  const RugbyEat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
