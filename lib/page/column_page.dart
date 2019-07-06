import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/background_decoration.dart';

class ColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BackgroundHelper.getCommonDecoration(),
      child: new Column(
        children: <Widget>[
          new Image.network(
            //加载网络图片
            'https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/'
            'c0%3Dbaike150%2C5%2C5%2C150%2C50/sign=92b9bfe58ed6277ffd1f3a6a49517455/4e4a20a4462309f785ea864c7b0e0cf3d6cad6e2.jpg',
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: new Opacity(
              opacity: 0.5, //不透明度
              child: new Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
              ),
            ),
          ),
//          Container(
//            margin: EdgeInsets.only(top: 20),
//            child: new Opacity(
//              opacity: 0.5,
//              child: new Container(
//                width: 100.0,
//                height: 100.0,
//                color: Colors.red,
//              ),
//            ),
//          ),
        ],
      ),
    );
  }
}
