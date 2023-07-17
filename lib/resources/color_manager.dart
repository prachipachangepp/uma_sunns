import 'package:flutter/material.dart';

class ColorManager{
  static Color primary = HexColor.fromHex('#79AEF5');
  static Color faintblue = HexColor.fromHex('#3A74B4');
  static Color grey = HexColor.fromHex('#737477');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color black = HexColor.fromHex('#000000');
  static Color Darkblue = HexColor.fromHex('#163172');
  static Color faintgrey = HexColor.fromHex('#8B8781');


}

extension HexColor on Color{
  static Color fromHex(String hexColorString){
    hexColorString = hexColorString.replaceAll('#', '');
    if(hexColorString.length == 6){
      hexColorString = 'FF'+ hexColorString; //8 char with opacity 100%
    }
    return Color(int.parse(hexColorString,radix: 16));
  }
}