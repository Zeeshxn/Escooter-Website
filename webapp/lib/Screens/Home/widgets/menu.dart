import 'package:flutter/material.dart';
import 'package:webapp/constants.dart';

class Navigation extends StatelessWidget {
  const Navigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      width: double.infinity,
      child: Column(
        children: [
          Container(
              constraints: const BoxConstraints(
                maxWidth: kMaxWidth,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        //title
                        const Text(
                          "EScooters",
                          textScaleFactor: 1.6,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        WebMenu(),

                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: kDarkgreyColor,
                            size: 25,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart_checkout_outlined,
                            color: kDarkgreyColor,
                            size: 25,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person_outline,
                            color: kDarkgreyColor,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class WebMenu extends StatelessWidget {
  const WebMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MenuItems(
          isActive: true,
          title: 'Home',
          press: () {},
        ),
        MenuItems(
          title: 'Products',
          press: () {},
        ),
        MenuItems(
          title: 'About Us',
          press: () {},
        ),
        MenuItems(
          title: 'Contact Us',
          press: () {},
        ),
      ],
    );
  }
}

class MenuItems extends StatefulWidget {
  final String title;
  final VoidCallback press;
  final bool isActive;
  const MenuItems(
      {super.key,
      required this.title,
      required this.press,
      this.isActive = false});

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: widget.press,
        onHover: (val) {
          setState(() {
            isHover = val;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: widget.isActive == true
                          ? kPrimaryColor
                          : isHover
                              ? kPrimaryColor
                              : Colors.transparent,
                      width: 4))),
          child: Text(
            widget.title,
            style: TextStyle(
                fontWeight: widget.isActive == true
                    ? FontWeight.bold
                    : isHover
                        ? FontWeight.bold
                        : FontWeight.normal,
                fontSize: 18,
                color: widget.isActive == true
                    ? kPrimaryColor
                    : isHover
                        ? kPrimaryColor
                        : Colors.black),
          ),
        ),
      ),
    );
  }
}
