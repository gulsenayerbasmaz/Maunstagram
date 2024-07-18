import 'package:flutter/material.dart';

String arka_renk = "fdfeff";
const String metin_renk ="fdfeff";

class renk extends Color{
  static int _donustur(String hexColor){
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if(hexColor.length == 6){
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
  renk(final String renk_kodu) : super(_donustur(renk_kodu));
}

