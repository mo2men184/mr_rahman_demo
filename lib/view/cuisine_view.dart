import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rugby_eat/components/custom_footer.dart';
import 'package:rugby_eat/components/widgets.dart';
import 'package:rugby_eat/utils/custom_scroll_behavior.dart';
import 'package:rugby_eat/view/search_result_view.dart';

class CuisineView extends StatelessWidget {
  const CuisineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _FirstBlock(),
              _SecondBlock(),
              _ThirdBlock(),
              CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

// First Block
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
                  flex: 6,
                  child: Container(
                    width: Get.width,
                    child: Image(
                      image: AssetImage('assets/images/2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Get.height * 0.08,
                      horizontal: Get.width * 0.05,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              margin: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                // color: Colors.blue,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image(
                                  image: AssetImage('assets/images/1.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              padding: EdgeInsets.all(50),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text:
                                        'Real Indian Food, Delivered Real Quick.',
                                    big: true,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                  ),
                                  CustomText(
                                    text:
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                    color: Colors.black,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton(
                                      child: CustomText(
                                        text: 'Read More',
                                        color: Colors.blue[600]!,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
            top: Get.size.height * 0.25,
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
                    text: 'Order Indian takeaway online',
                    fontSize: 40,
                    spaced: true,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[600]!,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: 'Find Indian takeway delivering near you',
                    fontSize: 16,
                    color: Colors.grey[900]!,
                  ),
                  Container(
                    width: Get.size.width * 0.4,
                    height: Get.size.height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: Get.height * 0.07,
                          width: Get.width * 0.26,
                          padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                          ),
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your postcode',
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
                          onTap: () {
                            Get.to(() => SearchResultView(),
                                curve: Curves.bounceIn);
                          },
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
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Second Block
class _SecondBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.6,
      width: Get.width,
      padding: EdgeInsets.symmetric(
        // vertical: Get.height * 0.08,
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
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.045),
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

// Third Block
class _ThirdBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height * 0.5,
        width: Get.width,
        padding: EdgeInsets.symmetric(
          vertical: Get.height * 0.08,
          horizontal: Get.width * 0.05,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            child: ScrollConfiguration(
              behavior: CustomScrollBehavior(),
              child: ListView.separated(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: ExpansionTile(
                      title: CustomText(
                        text: 'Is it good ?',
                      ),
                      backgroundColor: Colors.grey[900],
                      iconColor: Colors.white,
                      collapsedBackgroundColor: Colors.grey[850],
                      collapsedIconColor: Colors.white,
                      children: [
                        CustomText(
                          text:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                        ),
                      ],
                      childrenPadding: EdgeInsets.all(15),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
              ),
            ),
          ),
        ));
  }
}
