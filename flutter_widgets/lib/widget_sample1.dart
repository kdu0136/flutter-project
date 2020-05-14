import 'package:flutter/material.dart';

/// Container
/// 아무것도 없는 위젯
/// 다양한 프로퍼티 가지고 있음
var containerWidget1 = Container(
  color: Colors.red,
  width: 100,
  height: 100,
  padding: const EdgeInsets.all(10.0),
  margin: const EdgeInsets.all(10.0),
  child: containerWidget2,
);

var containerWidget2 = Container(
  color: Colors.blue,
  width: 75,
  height: 75,
  padding: const EdgeInsets.all(10.0),
  margin: const EdgeInsets.all(10.0),
  child: containerWidget3,
);

var containerWidget3 = Container(
  color: Colors.yellow,
  width: 50,
  height: 50,
  padding: const EdgeInsets.all(10.0),
  margin: const EdgeInsets.all(10.0),
);

/// Column
/// 수직 방향으로 위젯들을 나란히 배치하는 위젯
var columnWidget = Column(
  mainAxisSize: MainAxisSize.max, // axis 꽉 채우기
  mainAxisAlignment: MainAxisAlignment.center, // axis 정렬 가운데
  crossAxisAlignment: CrossAxisAlignment.center, // crossAxis(defaul axis 반대 - column => 가로, row => 세로) 정렬 가운데
  children: <Widget>[
    containerWidget1,
    containerWidget2,
    containerWidget3,
  ],
);

/// Row
/// 수평 방향으로 위젯들을 나란히 배치하는 위젯
var rowWidget = Row(
  mainAxisSize: MainAxisSize.max,
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    containerWidget1,
    containerWidget2,
    containerWidget3,
  ],
);

/// Stack
/// children 에 나열한 위젯들을 순서대로 겹치게 함
var stackWidget = Stack(
  children: <Widget>[
    containerWidget1,
    containerWidget2,
    containerWidget3,
  ],
);

/// SingleChildScrollView
/// 하나의 자식을 포함하는 스크롤 위젯
var singleChildScrollViewWidget = SingleChildScrollView(
  child: ListBody(
    children: List.generate(100, (index) => index).toList().map((e) => Text('$e')).toList(),
  ),
);

/// ListView
/// SingleChildScrollView 와 ListBody 의 조합과 동일한 효과 but 리스트 표현에 더 최적화된 위젯
var listViewWidget = ListView(
  scrollDirection: Axis.vertical,
  children: <Widget>[
    ListTile(
      leading: Icon(Icons.home),
      title: Text('Home'),
      trailing: Icon(Icons.navigate_next),
      onTap: () { print('tap home'); },
    ),
    ListTile(
      leading: Icon(Icons.event),
      title: Text('Event'),
      trailing: Icon(Icons.navigate_next),
      onTap: () { print('tap event'); },
    ),
    ListTile(
      leading: Icon(Icons.camera),
      title: Text('Camera'),
      trailing: Icon(Icons.navigate_next),
      onTap: () { print('tap camera'); },
    ),
  ],
);

/// GridView
/// 열 수를 지정하여 그리드 형태로 표시하는 위젯
var gridViewWidget = GridView.count(
  scrollDirection: Axis.vertical,
  crossAxisCount: 2,
  children: <Widget>[
    containerWidget1,
    containerWidget2,
    containerWidget3,
  ],
);

/// PageView
/// 여러 페이지를 좌우로 슬라이드 하는 위젯
var pageViewWidget = PageView(
  scrollDirection: Axis.vertical,
  children: <Widget>[
    containerWidget1,
    containerWidget2,
    containerWidget3,
  ],
);

/// TabController
var defaultTabControllerWidget = DefaultTabController(
  length: 3, // tab number
  child: Scaffold(
    appBar: AppBar(
      title: Text('tab'),
      bottom: TabBar( // scaffold 의 bottom 프로퍼티에 TabBar 지정
        tabs: <Widget>[ // tabs 프로퍼티에 Tab 의 리스트 지정
          Tab(icon: Icon(Icons.tag_faces)),
          Tab(text: '메뉴2'),
          Tab(icon: Icon(Icons.info), text: '메뉴3',),
        ],
      ),
    ),
    body: TabBarView( // scaffold 의 body 프로퍼티에는 TabBarView 배치
      children: <Widget>[ // children 프로퍼티에 표시할 화면 배치
        containerWidget1,
        containerWidget2,
        containerWidget3,
      ],
    ),
  ),
);

/// Center
/// 중앙으로 정렬시키는 위젯
var centerWidget = Center(
  child: circleAvatarWidget,
);

/// Padding
/// 안쪽 여백을 표현할 때 사용하는 위젯
var paddingWidget = Padding(
  padding: const EdgeInsets.all(40.0),
  child: containerWidget1,
);

/// Align
/// 자식 위젯의 정렬 방향을 정할 수 있는 위젯
var alignWidget = Align(
  alignment: Alignment.bottomRight,
  child: containerWidget1,
);

/// Expanded
/// 자식 위젯의 크기를 최대한으로 확장시켜주는 위젯
var expandedWidget = Column(
  children: <Widget>[
    Expanded(
      child: Container(color: Colors.red,),
    ),
    Expanded(
      child: Container(color: Colors.blue,),
    ),
    Expanded(
      child: Container(color: Colors.yellow,),
    ),
  ],
);

/// SizedBox
/// 특정 크기로 만드는 위젯
var sizedBoxWidget = SizedBox(
  width: 100,
  height: 100,
  child: cardWidget,
);

/// Card
/// 카드 형태의 모양을 제공하는 위젯
/// 기본 크기가 0 - 자식 위젯의 크기에 따라 크기 결정
var cardWidget = Card(
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16.0),
  ),
  elevation: 40, // 그림자 깊이
  child: Container(
    width: 200,
    height: 200,
    color: Colors.red,
  ),
);

/// RaisedButton
/// 입체감을 가지는 버튼 위젯
var raisedButtonWidget = RaisedButton(
  child: Text('Raised Button'),
  color: Colors.red,
  onPressed: () {
    print('on pressed raised button');
  },
);

/// FlatButton
/// 평평한 버튼
var flatButtonWidget = FlatButton(
  child: Text('Flat Button'),
  color: Colors.red,
  onPressed: () {
    print('on pressed flat button');
  },
);

/// IconButton
/// 아이콘을 표시하는 버튼
var iconButtonWidget = IconButton(
  icon: Icon(Icons.add),
  color: Colors.red,
  iconSize: 150.0,
  onPressed: () {
    print('on pressed icon button');
  },
);

/// FloatingActionButton
/// 입체감 있는 둥근 버튼
var floatingActionButtonWidget = FloatingActionButton(
  child: Icon(Icons.add),
  onPressed: () {
    print('on pressed icon button');
  },
);

/// Text
/// 글자 표시 위젯
var textWidget = Text(
  'Text Widget',
  style: TextStyle(
    fontSize: 40.0,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    color: Colors.red,
    letterSpacing: 4.0,
  ),
);

/// Image
/// 이미지 위젯
var imageWidget1 = Image.network('https://xlab-uploads-dev.s3.ap-northeast-2.amazonaws.com/banner/banner_200511_2.webp');
var imageWidget2 = Image.asset('assets/test4.jpg');

/// Icon
var iconWidget = Icon(
  Icons.home,
  color: Colors.red,
  size: 60.0,
);

/// Progress
/// 로딩 위젯
var progressWidget1 = CircularProgressIndicator(); // 원 로딩
var progressWidget2 = LinearProgressIndicator(); // 긴 막데기 로딩

/// CircleAvatar
/// 원형 위젯
var circleAvatarWidget = CircleAvatar(
  radius: 100,
//  child: Icon(Icons.person,),
  backgroundImage: NetworkImage('https://xlab-uploads-dev.s3.ap-northeast-2.amazonaws.com/banner/banner_200511_2.webp'), // 네트워크 이미지
);