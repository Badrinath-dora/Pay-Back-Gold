import 'package:flutter/material.dart';

class Constants {
  static OutlineInputBorder ifoutlineborder() {
    return OutlineInputBorder(borderSide: BorderSide(color: appPrimaryColor()));
  }

  // static Color appPrimaryColor1() {
  //   return hexToColor('8B0000');
  // }

  static Color appPrimaryColor() {
    return Color(0xFF8B0000);
  }

  static Color appLightPrimaryColor() {
    return Color.fromARGB(255, 254, 242, 242);
  }

  static double deviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width; // Adjust the value as needed
  }

  static double deviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height; // Adjust the value as needed
  }

  // static Color hexToColor(String hexCode) {
  //   return Color(int.parse(hexCode, radix: 16) + 0xFF000000);
  // }
}
