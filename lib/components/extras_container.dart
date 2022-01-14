import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rugby_eat/components/widgets.dart';

class ExtrasContainer extends StatelessWidget {
  final String? title;
  final String? description;
  final String? price;
  final VoidCallback? onAdd;

  const ExtrasContainer({
    Key? key,
    this.description,
    this.onAdd,
    this.price,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      width: Get.width * 0.2,
      height: Get.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey[300]!,
          width: 0.5,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  text: title!,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: '\$$price',
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: onAdd,
                      icon: Icon(
                        Icons.add_outlined,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: Get.width * 0.3,
              child: CustomText(
                text: description!,
                color: Colors.grey[900]!,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
