import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rugby_eat/components/widgets.dart';
import 'package:rugby_eat/model/cuisines_temp_data.dart';
import 'package:rugby_eat/utils/custom_scroll_behavior.dart';
import 'package:rugby_eat/view/cuisine_view.dart';
import 'package:rugby_eat/view/restaurant_view.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: CustomAppBar(
                  fullMenu: false,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300]!,
                      blurRadius: 10,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
              ),
              _FirstBlock(),
              _SecondBlock(),
              CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

// First Block "Popular Cuisines"
class _FirstBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.20,
      padding: EdgeInsets.symmetric(
        vertical: Get.height * 0.005,
        horizontal: Get.width * 0.01,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              // TODO : Create CustomTitle() from Row
              // TODO : ICON

              CustomText(
                text: "Popular Cuisines",
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: ScrollConfiguration(
              behavior: CustomScrollBehavior(),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CuisineContainer(
                    text: CUISINES[index],
                    imagePath: IMAGES_PATH[CUISINES[index]]!,
                    onTap: () {
                      Get.to(() => CuisineView(), curve: Curves.bounceIn);
                    },
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  width: 20,
                ),
                itemCount: 8,
              ),
            ),
          ),
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
      width: Get.width,
      padding: EdgeInsets.symmetric(
        vertical: Get.height * 0.05,
        horizontal: Get.width * 0.01,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              LocationContainer(),
              CustomSearch(
                width: Get.width * 0.82,
                placeHolder: "Search for a dish or restaurant",
                restaurants: true,
              ),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: IconButton(
              //     onPressed: () {},
              //     icon: Icon(
              //       Icons.edit,
              //       color: Colors.black,
              //     ),
              //   ),
              // ),
            ],
          ),

          // Results
          Container(
            width: Get.width,
            padding: EdgeInsets.symmetric(
              vertical: Get.height * 0.015,
            ),
            // height: Get.height * 0.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  height: Get.height * 1.5,
                  width: Get.width * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: '11 Open restaurants match your result.',
                      color: Colors.black,
                    ),
                    Column(
                      children: _dummyRestaurants()
                          .map((e) => Container(
                                margin: EdgeInsets.symmetric(
                                  vertical: 15,
                                ),
                                child: ResultRestaurantContaienr(
                                  title: e.toString(),
                                  categories: 'Indian - Bangladeshi - Halal',
                                  deliveryCost: 'Delivery \$2 Min. order \$15',
                                  deliveryTime: '15 - 25 Mins',
                                  onTap: () {
                                    Get.to(() => RestaurantView(),
                                        curve: Curves.bounceIn);
                                  },
                                ),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<String> _dummyRestaurants() {
  List<String> _list = [];
  for (int i = 0; i < 12; i++) {
    _list.add('Demo Restaurant $i');
  }
  return _list;
}

class ResultRestaurantContaienr extends StatelessWidget {
  // TODO : To Restaurant Data Model
  final String? title;
  final String? imgUrl;
  final String? categories;
  final String? deliveryCost;
  final String? deliveryTime;
  final String? rate;
  final VoidCallback? onTap;

  const ResultRestaurantContaienr({
    Key? key,
    this.categories,
    this.deliveryCost,
    this.onTap,
    this.deliveryTime,
    this.imgUrl,
    this.rate,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Get.height * 0.2,
        width: Get.width * 0.71,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300],
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText(
                          text: title!,
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          text: categories!,
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.delivery_dining_rounded),
                            SizedBox(
                              width: 5,
                            ),
                            CustomText(
                              text: deliveryCost!,
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomText(
                              text: deliveryTime!,
                              color: Colors.green,
                              fontSize: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: Get.width * 0.01,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
