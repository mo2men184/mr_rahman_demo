import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rugby_eat/components/widgets.dart';
import 'package:rugby_eat/utils/custom_scroll_behavior.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: SingleChildScrollView(
          child: Container(
            child: Stack(
              // alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    // CustomAppBar(),
                    _FirstBlock(),
                    CustomFooter(),
                  ],
                ),
                Positioned(
                  top: Get.height * 0.25,
                  right: 0,
                  child: _SecondBlock(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// First Block
class _FirstBlock extends StatelessWidget {
  final List<String> _menuCategories = [
    'Drinks',
    'Starters',
    'Tandoori Dishes',
    'Chef\'s Specials',
    'Curry Menu',
    'Korma Dishes',
    'Balti Dishes',
    'Masala Dishes',
    'Biryani Dishes',
    'Vegetable Side Dishes',
    'Rice',
    'Bread',
    'Condiments',
    'Set Meals',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Background
          Stack(
            children: [
              Container(
                width: Get.width,
                height: Get.height * 0.4,
                child: Image(
                  image: AssetImage('assets/images/1.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                  width: Get.width,
                  child: CustomAppBar(),
                ),
              ),
            ],
          ),

          // Body
          Container(
            padding: EdgeInsets.symmetric(
              vertical: Get.height * 0.07,
              horizontal: Get.width * 0.01,
            ),
            width: Get.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Side bar
                Container(
                  width: Get.width * 0.2,
                  height: Get.height * 0.7,
                  child: Center(
                    child: ListView.builder(
                      itemCount: _menuCategories.length,
                      itemBuilder: (context, index) {
                        return Center(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            width: Get.width * 0.15,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                  color: index == 0
                                      ? Colors.black
                                      : Colors.grey[300]!,
                                  width: 3,
                                ),
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: CustomText(
                                text: _menuCategories[index],
                                color: Colors.black,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                // Content
                Container(
                  padding: EdgeInsets.only(top: Get.height * 0.4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _menuCategories.map((e) {
                      return Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: e.toString(),
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: Get.height * 0.5,
                              width: Get.width * 0.4,
                              child: ListView.separated(
                                separatorBuilder: (context, index) => SizedBox(
                                  height: 10,
                                ),
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return ExtrasContainer(
                                    title: 'Option ${index + 1}',
                                    price: '8.95',
                                    onAdd: () {},
                                    description:
                                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Second Block "Floating Section"
class _SecondBlock extends StatelessWidget {
  const _SecondBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Get.width * 0.1,
      ),
      width: Get.width * 0.85,
      height: Get.height * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Restaurant Info
          Container(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  width: Get.width * 0.4,
                  height: Get.height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey[100]!,
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: Get.height * 0.065,
                      ),
                      CustomText(
                        text: 'Restaurant Name',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        big: true,
                      ),
                      CustomText(
                        text: 'Indian - Bangladeshi - Halal',
                        color: Colors.grey[850]!,
                        fontSize: 16,
                      ),
                      CustomText(
                        text: '515A Roman Road, Bow, E3, 5EL',
                        color: Colors.grey[850]!,
                        fontSize: 16,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        width: Get.width * 0.25,
                        height: Get.height * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.grey[100]!,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomText(
                                  text: 'Delivering now',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                                CustomText(
                                  text: 'I want to collect',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomText(
                                  text: '\$2 delivery fee',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                                CustomText(
                                  text: '\$15 min. order',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Divider(),
                          ExpansionTile(
                            title: CustomText(
                              text:
                                  'Note: Algery Advice, Some of our menu items may contains nuts seed & other......',
                              color: Colors.grey[800]!,
                              fontSize: 16,
                            ),
                            iconColor: Colors.orange,
                            collapsedIconColor: Colors.orange,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -1 * (Get.height * 0.05),
                  child: Container(
                    height: Get.height * 0.1,
                    width: Get.height * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey[300]!,
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300]!,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: CustomText(
                        text: 'LOGO',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            width: Get.width * 0.03,
          ),

          // Order Info
          Container(
            padding: EdgeInsets.all(20),
            width: Get.width * 0.25,
            height: Get.height * 0.27,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.grey[300]!,
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                        text: 'Your Order',
                        big: true,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  width: Get.width * 0.22,
                  height: Get.height * 0.07,
                  decoration: BoxDecoration(
                    color: Colors.grey[100]!,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.info_rounded,
                        color: Colors.orange,
                      ),
                      CustomText(
                        text:
                            'Click here if you or someone you are ordering for \nhas a food allergy.',
                        color: Colors.grey[800]!,
                        fontSize: 14,
                      ),
                    ],
                  ),
                ),

                // First Delivery Option
                Container(
                  padding: EdgeInsets.all(5),
                  width: Get.width * 0.22,
                  height: Get.height * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.grey[100]!,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.025,
                          vertical: 8,
                        ),
                        width: Get.width * 0.11,
                        height: Get.height * 0.055,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.grey[100]!,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.delivery_dining_rounded,
                              color: Colors.orange,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: 'Delivery',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(
                                  text: '35 - 50 mins',
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Second Delivery Option

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.022,
                          vertical: 8,
                        ),
                        width: Get.width * 0.10,
                        height: Get.height * 0.055,
                        // decoration: BoxDecoration(
                        //   color: Colors.white,
                        //   borderRadius: BorderRadius.circular(30),
                        // ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.shopping_bag_rounded,
                              color: Colors.black,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: 'Collection',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(
                                  text: '20 mins',
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
