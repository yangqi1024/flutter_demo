import 'package:flutter/material.dart';

class MinePageHeader extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MinePageHeaderState();
  }
}

class MinePageHeaderState extends State<MinePageHeader> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 149.0,
      width: double.infinity,
      color: Colors.white,
      child: new Container(
        margin: const EdgeInsets.only(left: 22.0, top: 57.0),
        width: double.infinity,
//        color: const Color(0xff998EFF),
        height: 66.0,
        child: new Row(
          children: <Widget>[
            new Image.asset(
              "images/user_icon.png",
              width: 66.0,
              height: double.infinity,
            ),
            new Expanded(
                child: new Container(
//              color: const Color(0xff328464),
              padding: const EdgeInsets.only(left: 17.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: new Text("未登录",
                          style: new TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold))),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        "登录赚碳币",
                        style: new TextStyle(fontSize: 15.0),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: new GestureDetector(
                          onTap: () {
                            Scaffold.of(context).showSnackBar(
                                new SnackBar(content: new Text("签到赚碳币")));
                          },
                          child: new ClipRRect(
                            borderRadius: new BorderRadius.circular(15.0),
                            child: new Container(
                              width: 83.0,
                              height: 30.0,
                              alignment: Alignment.center,
                              child: new Text(
                                "签到赚碳币",
                                style: new TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                              color: const Color(0xff008EFF),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  _clickSign(BuildContext context) {
    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("签到赚碳币")));
  }
}
