import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.01,
        vertical: Get.height * 0.01,
      ),
      height: Get.height * 0.08,
      width: Get.width * 0.14,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  CupertinoIcons.location_fill,
                  color: Colors.black.withOpacity(0.8),
                ),
                SizedBox(
                  width: 10,
                ),
                CustomText(
                  text: 'E1 4QL, Any Location',
                  color: Colors.black.withOpacity(0.8),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: CustomText(
                text: 'Change location',
                fontSize: 15,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
