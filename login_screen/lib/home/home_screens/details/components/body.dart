import 'package:flutter/material.dart';

import '../../../constants.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: "Walk Dog",
            description: "His name is Niko.\n"
                "I am out of town for the weekend\n"
                "and need someone to take him for\n"
                "a walk a few times while I'm gone.\n",
            price: 15,
          ),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(30),
            color: kPrimaryColor,
            child: MaterialButton(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              minWidth: MediaQuery.of(context).size.width,
              onPressed: () {},
              child: Text(
                'Help',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    this.title,
    this.description,
    this.price,
  }) : super(key: key);

  final String? title, description;
  final int? price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: description,
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text("\$$price",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: kPrimaryColor)),
        ],
      ),
    );
  }
}

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.6,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Spacer(
                    flex: 1,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding + 10),
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 250,
                    width: 62,
                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    //   // borderRadius: BorderRadius.circular(6),
                    //   // boxShadow: [
                    //   //   BoxShadow(
                    //   //     offset: Offset(0, 10),
                    //   //     blurRadius: 22,
                    //   //     color: kPrimaryColor.withOpacity(0.22),
                    //   //   ),
                    //   // ],
                    // ),
                  )
                ],
              ),
            ),
            Container(
              height: size.height * 0.6,
              width: size.width * 0.80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.29),
                    ),
                  ],
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/puppy.jpg"))),
            ),
          ],
        ),
      ),
    );
  }
}
