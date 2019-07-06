import 'package:flutter/cupertino.dart';

class BackgroundHelper {
  static BoxDecoration getCommonDecoration() {
    return new BoxDecoration(
        color: Color(0xFF080324),
        image: new DecorationImage(
            alignment: Alignment.topCenter,
            image: new AssetImage("images/main_page_fragment_bkg_img.png")));
  }
}
