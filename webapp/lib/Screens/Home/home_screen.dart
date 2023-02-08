import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:webapp/Screens/Home/widgets/banner.dart';
import '../../constants.dart';
import 'widgets/menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      //scrollable widget
      body: SingleChildScrollView(
        child: Column(
          children: [
            //now we create menu and header
            Navigation(),
            //now we create banner
            //for this import packages
            HeroBanner(),
            Column(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: kMaxWidth),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryCard(
                              image:
                                  "https://o.remove.bg/downloads/ea3f5efe-8ea5-4622-9a28-5baceb4618a0/image-removebg-preview.png",
                              title: "EVO Scooter",
                              press: () {}),
                          CategoryCard(
                              image:
                                  "https://o.remove.bg/downloads/0b5e3da8-ad83-42ad-ab3c-a2b8041f420f/image-removebg-preview.png",
                              title: "E-Helmet",
                              press: () {}),
                          CategoryCard(
                              image:
                                  "https://o.remove.bg/downloads/c5219572-6b17-4a40-ab2f-2190670de167/image-removebg-preview-removebg-preview.png",
                              title: "Swiss Helmet",
                              press: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatefulWidget {
  const CategoryCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: 10), //     >>>>>>>>left off at 35:00 <<<<<<<<<<<<<<<<
          width: 250,
          decoration: BoxDecoration(
              color: kblueColor, boxShadow: [if (isHover) kDefaultShadow]),
          child: Column(children: [
            Image.network(
              widget.image,
              height: 200,
              width: 200,
              fit: BoxFit.contain,
            ),
            MaterialButton(
              color: kSecondaryColor,
              height: 40,
              onPressed: () {},
              child: Text(
                widget.title,
                style: TextStyle(color: kWhiteColor),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
