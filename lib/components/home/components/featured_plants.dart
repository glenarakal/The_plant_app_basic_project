

import 'package:flutter/material.dart';
import 'package:plant_app_project/components/home/components/constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(image: 'assets/featured/featured1.jpg', press: () {}),
          FeaturedPlantCard(image: 'assets/featured/featured2.jpg', press: () {}),
          FeaturedPlantCard(image: 'assets/featured/featured4.jpg', press: () {}),
          FeaturedPlantCard(image: 'assets/featured/featured3.jpg', press: () {}),
           FeaturedPlantCard(image: 'assets/featured/featured5.jpg', press: () {}),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    super.key,
    required this.image,
    required this.press,
  });

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
      ),
    );
  }
}
