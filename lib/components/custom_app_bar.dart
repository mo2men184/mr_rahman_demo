import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rugby_eat/components/widgets.dart';

class CustomAppBar extends StatelessWidget {
  final bool fullMenu;
  const CustomAppBar({
    Key? key,
    this.fullMenu = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 30,
      ),
      color: Colors.black.withOpacity(0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo
          CustomText(
            text: 'RUGBY EAT',
            big: true,
            color: fullMenu ? Colors.white : Colors.black,
          ),

          // Menu Items
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            width: Get.size.width * 0.3,
            child: Row(
              mainAxisAlignment: fullMenu
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.end,
              children: [
                if (fullMenu)
                  CustomText(
                    text: 'For You',
                    color: fullMenu ? Colors.white : Colors.black,
                  ),
                if (fullMenu)
                  CustomText(
                    text: 'Deliver with RugbyEat',
                    color: fullMenu ? Colors.white : Colors.black,
                  ),
                CustomText(
                  text: 'Log in',
                  color: fullMenu ? Colors.white : Colors.black,
                ),
                if (!fullMenu)
                  SizedBox(
                    width: 20,
                  ),
                CustomText(
                  text: 'Help',
                  color: fullMenu ? Colors.white : Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
