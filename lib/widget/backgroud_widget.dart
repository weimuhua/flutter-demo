import 'package:flutter/cupertino.dart';

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Color(0xFF080324),
      child: new Image.asset("images/main_page_fragment_bkg_img.png"),
    );
  }
}
