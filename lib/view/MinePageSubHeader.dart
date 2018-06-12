import 'package:flutter/material.dart';

class MinePageSubHeader extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MinePageSubHeaderState();
  }
}

class MinePageSubHeaderState extends State<MinePageSubHeader> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        width: double.infinity,
        height: 76.0,
        child: new Row(children: <Widget>[
          new Expanded(
              child: new GestureDetector(
            child: new MinePageSubHeaderView(
                info: new MinePageSubHeaderViewInfo(
                    "images/home_bus_32.png", "绿色商城", "碳币当钱兑好礼", true)),
            onTap: () {
              Scaffold
                  .of(context)
                  .showSnackBar(new SnackBar(content: new Text("绿色商城")));
            },
          )),
          new Container(
            color: const Color(0xffEAEAEA),
            width: 0.5,
            height: 38.0,
          ),
          new Expanded(
              child: new GestureDetector(
            child: new MinePageSubHeaderView(
                info: new MinePageSubHeaderViewInfo(
                    "images/home_green_32.png", "碳币任务", "动动手指赚碳币", false)),
            onTap: () {
              Scaffold
                  .of(context)
                  .showSnackBar(new SnackBar(content: new Text("碳币任务")));
            },
          ))
        ]));
  }
}

class MinePageSubHeaderView extends StatefulWidget {
  final MinePageSubHeaderViewInfo info;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MinePageSubHeaderViewState();
  }

  MinePageSubHeaderView({Key key, @required this.info}) : super(key: key);
}

class MinePageSubHeaderViewState extends State<MinePageSubHeaderView> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: new Image.asset(
                widget.info.iconPath,
                width: 26.0,
                height: 26.0,
              )),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildText(),
              new Text(
                widget.info.des,
                style: new TextStyle(
                    fontSize: 12.0, color: const Color(0xff999999)),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildText() {
    if (widget.info.hasHot) {
      return new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text(
            widget.info.title,
            style:
                new TextStyle(fontSize: 16.0, color: const Color(0xff333333)),
          ),
          new Image.asset(
            "images/surprised.png",
            width: 32.0,
            height: 16.0,
          )
        ],
      );
    } else {
      return new Text(
        widget.info.title,
        style: new TextStyle(fontSize: 16.0, color: const Color(0xff333333)),
      );
    }
  }
}

class MinePageSubHeaderViewInfo {
  String iconPath;
  String title;
  String des;
  bool hasHot;

  MinePageSubHeaderViewInfo(this.iconPath, this.title, this.des, this.hasHot);
}
