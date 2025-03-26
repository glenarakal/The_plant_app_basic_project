import 'package:flutter/material.dart';
import 'package:plant_app_project/components/components/details/body.dart';


import 'package:plant_app_project/components/home/components/constants.dart';

class RecomendsPlant extends StatelessWidget {
  const RecomendsPlant({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Body1()));
            },
            child: RecomendPlantCard(
              image: "assets/images/flower1.jpg",
              title: "Primula Denticula",
              country: "India",
              price: "15₹",
              press: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder:(context)=>Body1()));
              },
            ),
          ),
          RecomendPlantCard(
            image: "assets/images/flower2.jpg",
            title: "Logan Hadley",
            country: "India",
            price: "10₹",
            press: () {
            
            },
          ),
          RecomendPlantCard(
            image: "assets/images/flower3.jpg",
            title: "Garden Roses",
            country: "India",
            price: "10₹",
            press: () {
             
            },
          ),
          RecomendPlantCard(
            image: "assets/images/flower4.jpg",
            title: "Cactus",
            country: "India",
            price: "55₹",
            press: () {
            
            },
          ),
          RecomendPlantCard(
            image: "assets/images/flower5.jpg",
            title: "Aster Flower",
            country: "India",
            price: "25₹",
            press: () {
             
            },
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  });
  final String image, title, country;
  final String price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.labelSmall,
                        ),

                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "$price",
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: kPrimaryColor),
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
