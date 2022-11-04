import 'package:flutter/material.dart';

import '../../components/my_bottom_nav_bar.dart';
import '../../constants.dart';
import '../details/components/body.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
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
        backgroundColor: kPrimaryColor,
        elevation: 0,
        //backgroundColor: Colors(kPrimaryColor),
        leading: IconButton(
          //Image.asset("assets/icons/menu.png"), onPressed: () {}),
          icon: Icon(Icons.menu),
          onPressed: () {},
        ));
  }
}
