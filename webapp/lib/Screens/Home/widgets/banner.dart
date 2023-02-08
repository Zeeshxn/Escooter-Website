import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:webapp/constants.dart';

class HeroBanner extends StatefulWidget {
  const HeroBanner({super.key});

  @override
  State<HeroBanner> createState() => _HeroBannerState();
}

class _HeroBannerState extends State<HeroBanner> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: [
              SliderCard(
                  title: 'Metric Cruise07',
                  image:
                      'https://o.remove.bg/downloads/576cac0a-25f3-47a3-a76a-6c78610d5f7d/51nWz6EPAaL._AC_SL1000_-removebg-preview.png',
                  press: () {}),
              SliderCard(
                  title: 'E121 O v O',
                  image:
                      'https://o.remove.bg/downloads/ea3f5efe-8ea5-4622-9a28-5baceb4618a0/image-removebg-preview.png',
                  press: () {}),
              SliderCard(
                  title: 'Stellaris 111',
                  image:
                      'https://o.remove.bg/downloads/33085b35-3fee-4626-b514-2ac9635d9785/image-removebg-preview.png',
                  press: () {}),
              SliderCard(
                  title: 'E-Helmet',
                  image:
                      'https://o.remove.bg/downloads/443d2455-03d1-449d-b0ca-3364acaea1c7/image-removebg-preview.png',
                  press: () {}),
              SliderCard(
                  title: 'Safety Helmet',
                  image:
                      'https://o.remove.bg/downloads/19705a58-7007-45ab-9e03-aadd65d9f2c0/image-removebg-preview.png',
                  press: () {}),
            ],
            options: CarouselOptions(
                height: 500,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int p, CarouselPageChangedReason) {
                  setState(() {
                    index = p;
                  });
                })),
        DotsIndicator(
          dotsCount: 5,
          position: index.toDouble(),
          decorator: DotsDecorator(
            activeColor: kDarkblueColor.withOpacity(0.5),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        )
      ],
    );
  }
}

class SliderCard extends StatelessWidget {
  const SliderCard({
    Key? key,
    required this.title,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String title, image;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      color: kblueColor,
      child: Row(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$title Delivered To You",
                textScaleFactor: 2.5,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: press,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: const Text(
                    "Shop Now",
                    style: TextStyle(
                      color: kWhiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(child: Image.network(image)),
        ],
      ),
    );
  }
}
