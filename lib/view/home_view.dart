import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rugby_eat/components/widgets.dart';
import 'package:rugby_eat/utils/custom_scroll_behavior.dart';
import 'package:rugby_eat/view/cuisine_view.dart';
import 'package:rugby_eat/view/search_result_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _FirstBlock(),
              _SecondBlock(),
              CustomFooter(),
              // _SecondBlock(),
            ],
          ),
        ),
      ),
    );
  }
}

// First block of home page

class _FirstBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.size.height,
      child: Stack(
        children: [
          // Body
          Container(
            child: Column(
              children: [
                // Wallpaper
                Expanded(
                  flex: 5,
                  child: Container(
                    width: Get.width,
                    child: Image(
                      image: AssetImage('assets/images/0.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: Get.height * 0.08),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: Get.size.height * 0.05,
                        ),
                        CustomText(
                          text: 'Find your flavour even faster',
                          big: false,
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                        SizedBox(
                          height: Get.size.height * 0.02,
                        ),
                        CustomText(
                          text:
                              'Download the Rugby Eat app for faster ordering and more personalised recommendations',
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                        SizedBox(
                          height: Get.size.height * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            StoreButton(),
                            SizedBox(
                              width: 15,
                            ),
                            StoreButton(
                              isApple: true,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // AppBar
          Align(
            alignment: Alignment.topCenter,
            child: CustomAppBar(),
          ),

          // Find Restaurants
          Positioned(
            top: Get.size.height * 0.35,
            left: (Get.width - Get.width * 0.5) / 2,
            child: Container(
              width: Get.size.width * 0.5,
              height: Get.size.height * 0.25,
              padding: EdgeInsets.symmetric(vertical: Get.height * 0.03),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -2),
                    color: Colors.black87.withOpacity(0.5),
                    blurRadius: 10,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Tuck into a takeaway today',
                    fontSize: 40,
                    spaced: true,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[600]!,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: 'Find restaurants delivering right now, near you',
                    fontSize: 16,
                    color: Colors.grey[900]!,
                  ),
                  CustomSearch(
                    onTap: () {
                      Get.to(() => SearchResultView(), curve: Curves.bounceIn);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Second block of home page

class _SecondBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.6,
      width: Get.width,
      padding: EdgeInsets.symmetric(
        vertical: Get.height * 0.025,
        horizontal: Get.width * 0.05,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'Popular Cuisines',
            color: Colors.black,
            big: true,
            fontWeight: FontWeight.bold,
          ),
          CustomText(
            text: "We've got a lot to choose from.",
            color: Colors.black,
          ),

          // TODO : Replace with StaggeredGridView
          Container(
            height: Get.height * 0.45,
            width: Get.width * 0.9,
            padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.045,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CuisineItemContainer(
                      text: 'Chinese',
                      imagePath: 'assets/icons/chinese.png',
                      onTap: () {
                        Get.to(() => CuisineView(), curve: Curves.bounceIn);
                      },
                    ),
                    CuisineItemContainer(
                      text: 'Fish & Chips',
                      imagePath: 'assets/icons/fish.png',
                      onTap: () {
                        Get.to(() => CuisineView(), curve: Curves.bounceIn);
                      },
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CuisineItemContainer(
                      text: 'Pizza',
                      imagePath: 'assets/icons/pizza.png',
                      onTap: () {
                        Get.to(() => CuisineView(), curve: Curves.bounceIn);
                      },
                    ),
                    CuisineItemContainer(
                      text: 'Thai',
                      imagePath: 'assets/icons/thai.png',
                      onTap: () {
                        Get.to(() => CuisineView(), curve: Curves.bounceIn);
                      },
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CuisineItemContainer(
                      text: 'Kebabs',
                      imagePath: 'assets/icons/kebabs.png',
                      onTap: () {
                        Get.to(() => CuisineView(), curve: Curves.bounceIn);
                      },
                    ),
                    CuisineItemContainer(
                      text: 'Chicken',
                      imagePath: 'assets/icons/chicken.png',
                      onTap: () {
                        Get.to(() => CuisineView(), curve: Curves.bounceIn);
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
