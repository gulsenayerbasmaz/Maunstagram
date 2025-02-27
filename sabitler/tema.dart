import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ext.dart';


class Tema{
  inputDec(String hintText, IconData icon){
    return InputDecoration(
      border: InputBorder.none,
      hintText: hintText,
      hintStyle: GoogleFonts.quicksand(
        color: renk(metin_renk),
      ),
      prefixIcon: Icon(
        icon,
        color: renk("fdfeff"),
      ),
    );
  }
  inputBoxDec(){
    return BoxDecoration(
      color: renk("dc2c1d"),
      borderRadius: BorderRadius.circular(20),
    );
  }
}