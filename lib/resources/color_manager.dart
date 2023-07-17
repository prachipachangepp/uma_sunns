import 'package:flutter/material.dart';

class ColorManager{
  static Color navyblue = HexColor.fromHex("#163172");
  static Color grey = HexColor.fromHex("#8B8781");
  static Color blue = HexColor.fromHex("#3A74B4");
  static Color white = HexColor.fromHex("#FFFFFF");
  //static color = HexColor.fromHex("");
}

extension HexColor on Color{
  static Color fromHex(String hexColorString){
    hexColorString = hexColorString.replaceAll('#', '');
    if(hexColorString.length == 6){
      hexColorString = "FF"+ hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}