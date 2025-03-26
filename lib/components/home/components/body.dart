import 'package:flutter/material.dart';
import 'package:plant_app_project/components/home/components/featured_plants.dart';

import 'package:plant_app_project/components/home/components/header_with_searchbox.dart';
import 'package:plant_app_project/components/home/components/recomendsplant.dart';
import 'package:plant_app_project/components/home/components/title_with_more_bbtn.dart';

import 'package:plant_app_project/components/home/components/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return 
      SingleChildScrollView(
         child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: (){
              
            },
          ),
          RecomendsPlant(),
          TitleWithMoreBtn(title: "Featured Plants",
           press: (){},),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)
          
        ],
      ),
    );
  }
}
