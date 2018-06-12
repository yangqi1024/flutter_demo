import 'package:flutter/material.dart';
import 'package:flutter_app/view/MinePageHeader.dart';
import 'package:flutter_app/view/MinePageSubHeader.dart';
import 'package:flutter_app/view/MinePageList.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MinePageState();
  }
}

class MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new MinePageHeader(),
        new MinePageSubHeader(),
        new SizedBox(
          height: 8.0,
        ),
        new MinePageList()
      ],
    );
  }
}
