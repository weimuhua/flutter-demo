import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/background_decoration.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BackgroundHelper.getCommonDecoration(),
      child: new Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.brown,
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
