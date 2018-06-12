import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'pages/MinePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MainComponent();
}

class MainComponent extends State<MyApp> {
  int _tabIndex = 0;

  final selectColor = new TextStyle(color: const Color(0xff008EFF));
  final normalColor = new TextStyle(color: const Color(0xff929292));
  var tabTitles = ['乘车', '路线', '碳生活', '我的'];
  var tabImages;
  var _body;

  initData() {
    if (tabImages == null) {
      tabImages = [
        [
          getImageByPath('images/home_bus_32.png'),
          getImageByPath('images/home_bus_32_normal.png')
        ],
        [
          getImageByPath('images/home_transfer_32.png'),
          getImageByPath('images/home_transfer_32_normal.png')
        ],
        [
          getImageByPath('images/home_green_32.png'),
          getImageByPath('images/home_green_32_normal.png')
        ],
        [
          getImageByPath('images/home_mine_32.png'),
          getImageByPath('images/home_mine_32_normal.png')
        ]
      ];
    }

    _body = new IndexedStack(
      index: _tabIndex,
      children: <Widget>[
        new MinePage(),
        new MinePage(),
        new MinePage(),
        new MinePage()
      ],
    );
  }

  Image getImageByPath(path) {
    return new Image.asset(path, width: 24.0, height: 24.0);
  }

  TextStyle getTabStyle(int tabIndex) {
    if (tabIndex == _tabIndex) {
      return selectColor;
    }
    return normalColor;
  }

  Text getTabText(int tabIndex) {
    return new Text(tabTitles[tabIndex], style: getTabStyle(tabIndex));
  }

  Image getTabIcon(int tabIndex) {
    if (tabIndex == _tabIndex) {
      return tabImages[tabIndex][0];
    }
    return tabImages[tabIndex][1];
  }

  @override
  Widget build(BuildContext context) {
    initData();
    // TODO: implement build
    return new MaterialApp(
      theme: new ThemeData(primaryColor: const Color(0xff008EFF)),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            tabTitles[_tabIndex],
            style: new TextStyle(color: Colors.white),
          ),
        ),
        body: _body,
        bottomNavigationBar: new CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: getTabIcon(0), title: getTabText(0)),
            new BottomNavigationBarItem(
                icon: getTabIcon(1), title: getTabText(1)),
            new BottomNavigationBarItem(
                icon: getTabIcon(2), title: getTabText(2)),
            new BottomNavigationBarItem(
                icon: getTabIcon(3), title: getTabText(3)),
          ],
          currentIndex: _tabIndex,
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ),
      ),
    );
  }
}
