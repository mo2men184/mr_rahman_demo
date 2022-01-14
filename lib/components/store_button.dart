import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets.dart';

class StoreButton extends StatelessWidget {
  final bool isApple;
  const StoreButton({
    Key? key,
    this.isApple = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.size.height * 0.08,
      width: Get.size.width * 0.150,
      child: Image(
        image: AssetImage(isApple
            ? 'assets/icons/apple.png'
            : 'assets/icons/google_play.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}
