import 'package:flutter/material.dart';

class MinePageList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MinePageListState();
  }
}

class MinePageListState extends State<MinePageList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Column(
        children: <Widget>[
          new GestureDetector(
            child: new MinePageListItem(
                info: new MinePageListItemInfo(
                    "images/home_bus_32.png", "分享应用", "赚碳币", false, true)),
            onTap: () {
              Scaffold
                  .of(context)
                  .showSnackBar(new SnackBar(content: new Text("分享应用")));
            },
          ),
          new GestureDetector(
            child: new MinePageListItem(
                info: new MinePageListItemInfo(
                    "images/home_bus_32.png", "帮助与反馈", "", false, true)),
            onTap: () {
              Scaffold
                  .of(context)
                  .showSnackBar(new SnackBar(content: new Text("帮助与反馈")));
            },
          ),
          new GestureDetector(
            child: new MinePageListItem(
                info: new MinePageListItemInfo(
                    "images/home_bus_32.png", "设置", "", false, true)),
            onTap: () {
              Scaffold
                  .of(context)
                  .showSnackBar(new SnackBar(content: new Text("设置")));
            },
          ),
          new GestureDetector(
            child: new MinePageListItem(
                info: new MinePageListItemInfo(
                    "images/home_bus_32.png", "关于我们", "", false, false)),
            onTap: () {
              Scaffold
                  .of(context)
                  .showSnackBar(new SnackBar(content: new Text("关于我们")));
            },
          )
        ],
      ),
      width: double.infinity,
    );
  }
}

class MinePageListItem extends StatefulWidget {
  final MinePageListItemInfo info;

  MinePageListItem({Key key, @required this.info}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MinePageListItemState();
  }
}

class MinePageListItemState extends State<MinePageListItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      width: double.infinity,
      color: Colors.white,
      height: 68.0,
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14.0),
              child: new Image.asset(
                widget.info.iconPath,
                width: 20.0,
                height: 20.0,
              )),
          new Expanded(child: buildContent())
        ],
      ),
    );
  }

  Widget buildContent() {
    if (widget.info.divider) {
      return new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  widget.info.title,
                  style: new TextStyle(
                      fontSize: 16.0, color: const Color(0xff333333)),
                ),
                buildRightText(),
              ],
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          new Divider(
            height: 0.5,
          )
        ],
      );
    } else {
      return new Container(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text(
              widget.info.title,
              style:
                  new TextStyle(fontSize: 16.0, color: const Color(0xff333333)),
            ),
            buildRightText(),
          ],
        ),
        width: double.infinity,
        height: double.infinity,
      );
    }
  }

  Widget buildRightText() {
    if (widget.info.des.isEmpty) {
      return new Padding(
          padding: const EdgeInsets.only(right: 3.0),
          child: new Image.asset(
            "images/arrow_right.png",
            width: 29.0,
            height: 29.0,
          ));
    } else {
      return new Padding(
          padding: const EdgeInsets.only(right: 3.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new Text(
                widget.info.des,
                style: new TextStyle(
                    fontSize: 14.0, color: const Color(0xff999999)),
              ),
              new Image.asset(
                "images/arrow_right.png",
                width: 29.0,
                height: 29.0,
              )
            ],
          ));
    }
  }
}

class MinePageListItemInfo {
  String iconPath;
  String title;
  String des;
  bool redPoint;
  bool divider;

  MinePageListItemInfo(
      this.iconPath, this.title, this.des, this.redPoint, this.divider);
}
