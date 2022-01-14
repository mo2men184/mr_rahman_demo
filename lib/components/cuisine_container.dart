import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rugby_eat/components/widgets.dart';

class CuisineContainer extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback? onTap;

  const CuisineContainer({
    Key? key,
    this.text = '',
    this.imagePath = '',
    this.onTap,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Get.width / Get.height,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: Get.width * 0.06,
                  height: Get.height * 0.09,
                  child: Image(
                    image: AssetImage(imagePath),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  text: text,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
