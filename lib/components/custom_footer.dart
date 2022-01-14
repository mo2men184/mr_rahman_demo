import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rugby_eat/components/widgets.dart';
import 'package:get/get.dart';

class CustomFooter extends StatelessWidget {
  // Bottom Menus
  final Map<String, List<String>> _menus = {
    "Customer service": [
      'Contact us',
      'Sign up',
      'Mobile App',
      'Redeem a Giftcard',
      'Buy a Giftcard',
    ],
    "Top cuisines": [
      'Chinese',
      'Indian',
      'Italian',
      'Pizza',
      'Sushi',
      'View all cuisines',
    ],
    "Get to know us": [
      'Restaurant Sign up',
      'Deliver with Rugby Eat',
      'Price Promise',
      'Privacy Policy',
      'Terms and conditions',
      'Cookies Policies',
      'About Rugby Eat',
      'Company Website',
      'Careers',
    ],
  };

  final List<String> _socialIconsPaths = [
    "facebook.png",
    "instagram.png",
    "twitter.png",
    "youtube.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      child: Column(
        children: [
          // Bottom Menus
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.only(
                left: Get.width / 25,
                top: Get.height / 30,
              ),
              color: Colors.grey[200]!.withOpacity(0.7),
              child: ListView.builder(
                itemCount: _menus.length,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  String _title = _menus.keys.toList()[index];
                  List<String> _subMenus = _menus[_title]!;

                  return Container(
                    padding: EdgeInsets.all(25),
                    height: Get.height / 9 * 5,
                    width: Get.width / 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CustomText(
                            text: _title,
                            big: true,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: Get.height / 9 * 5 * 0.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: _subMenus.map((e) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: CustomText(
                                      text: e,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),

          // Footer
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Get.width / 25,
                        vertical: Get.height / 80,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 50,
                                vertical: 60,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: CustomText(
                                      text: "Download our app",
                                      big: true,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      StoreButton(),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      StoreButton(
                                        isApple: true,
                                      ),
                                      // Container(
                                      //   height: Get.size.height * 0.08,
                                      //   width: Get.size.width * 0.125,
                                      //   color: Colors.black,
                                      // ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: Get.width / 50,
                                vertical: Get.height / 15,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: 'Feedback',
                                    big: true,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                  ),
                                  CustomText(
                                    text: 'Help us improve our service',
                                    color: Colors.black,
                                  ),
                                  TextButton(
                                    child: CustomText(
                                      text: 'Send Feedback',
                                      color: Colors.blue[800]!,
                                    ),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: Get.width / 50,
                                vertical: Get.height / 15,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    text: 'Follow us',
                                    big: true,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                  ),

                                  // Social Icons
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(FontAwesomeIcons.facebook),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Icon(FontAwesomeIcons.twitter),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Icon(FontAwesomeIcons.instagram),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Icon(FontAwesomeIcons.youtube),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.grey[200]!.withOpacity(0.7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // TODO: Verified By VISA. MasterCard, SafeKey Logos
                          Container(
                            child: Row(),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
