import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rugby_eat/components/widgets.dart';

class CuisineItemContainer extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback? onTap;

  const CuisineItemContainer({
    Key? key,
    this.text = '',
    this.onTap,
    this.imagePath = '',
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Get.width * 0.25,
        height: Get.height * 0.2,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: CustomText(
                text: text,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: Get.width * 0.12,
                height: Get.height * 0.18,
                child: Image(
                  image: AssetImage(imagePath),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
