import 'package:flutter/material.dart';
import 'package:plant_app_project/components/components/my_bottom_nav_bar..dart';


import 'package:plant_app_project/components/home/components/body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(onPressed: null, icon: Icon(Icons.menu_book)),
    );
  }
}
