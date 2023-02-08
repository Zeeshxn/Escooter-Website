import 'package:flutter/cupertino.dart';

//color
const kPrimaryColor = Color(0xff654ce6);
const kSecondaryColor = Color(0xffa594ff);
const kDarkblueColor = Color(0xff25396f);
const kblueColor = Color.fromARGB(255, 109, 118, 241);
const kDarkgreyColor = Color.fromARGB(255, 185, 184, 184);
const kWhiteColor = Color(0xffffffff);

const kDefaultPadding = 20.0;
const kMaxWidth = 1232.0;
const kDefaultDuration = Duration(milliseconds: 250);

//our product shadow
final kDefaultShadow = BoxShadow(
  offset: const Offset(0, 20),
  spreadRadius: 10,
  blurRadius: 20,
  color: Color.fromARGB(255, 8, 255, 41).withOpacity(0.15),
);
