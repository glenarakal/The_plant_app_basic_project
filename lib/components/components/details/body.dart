import 'package:flutter/material.dart';

import 'package:plant_app_project/components/components/details/screens/image_and_icons.dart';
import 'package:plant_app_project/components/components/details/screens/title_and_price.dart';
import 'package:plant_app_project/components/home/components/constants.dart';

class Body1 extends StatelessWidget {
  const Body1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageandIcons(size: size),

          TitleAndPrice(title: "Angelica", country: "Russia", price: 999),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(onPressed: () {}, child: Text("Description")),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding*2,)
        ],
      ),
    );
  }
}
