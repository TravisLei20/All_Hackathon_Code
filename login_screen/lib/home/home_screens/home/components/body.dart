import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recommend_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Gets height and width of screen
    Size size = MediaQuery.of(context).size;
    // enables scrolling on the device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(),
          TitleWithMoreButton(title: "Recommended", press: () {}),
          RecommendsPlants(),
          TitleWithMoreButton(
            title: "Pick a Category",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
