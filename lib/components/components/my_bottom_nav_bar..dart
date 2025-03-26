import 'package:flutter/material.dart';
import 'package:plant_app_project/components/home/components/constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding * 2,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/featured/navi2.jpg"),
            iconSize: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/featured/navi2.jpg"),
            iconSize: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/featured/navi2.jpg"),
            iconSize: 20,
          ),
        ],
      ),
    );
  }
}
