import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets.dart';

class CustomSearch extends StatelessWidget {
  final String placeHolder;
  final bool restaurants;
  final double? width;
  final VoidCallback? onTap;
  const CustomSearch({
    Key? key,
    this.width,
    this.onTap,
    this.placeHolder = 'Enter your postcode',
    this.restaurants = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width == null ? Get.size.width * 0.4 : width!,
      height: Get.size.height * 0.11,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: Get.height * 0.07,
            width: width == null ? Get.width * 0.26 : width! * 0.65,
            padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.02,
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  icon: restaurants
                      ? Icon(
                          CupertinoIcons.search,
                          color: Colors.black,
                        )
                      : null,
                  border: InputBorder.none,
                  hintText: placeHolder,
                ),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: Get.size.width * 0.07,
              height: Get.height * 0.07,
              child: Center(
                child: CustomText(
                  text: 'Search',
                  big: true,
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.orange[600]!,
                  width: 0.5,
                ),
                color: Colors.orange[600]!,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
