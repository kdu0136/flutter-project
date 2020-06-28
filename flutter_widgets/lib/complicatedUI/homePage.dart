import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}): super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// initState
  /// 위젯이 생성될 때 호출
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('${this.runtimeType} initState');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('${this.runtimeType} didChangeDependencies');
  }

  @override
  void didUpdateWidget(HomePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('${this.runtimeType} didUpdateWidget');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('${this.runtimeType} deactivate');
  }

  /// dispose
  /// 위젯이 완전히 종료될 때 호출
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('${this.runtimeType} dispose');
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _contentTop(),
        _contentMiddle(),
        _contentBottom(),
      ],
    );
  }

  _contentTop() => Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Column(
          children: <Widget>[
            _topRowContents(
              contents: <Widget>[
                _topContents(icon: Icons.local_taxi, text: 'taxi1'),
                _topContents(icon: Icons.local_taxi, text: 'taxi2'),
                _topContents(icon: Icons.local_taxi, text: 'taxi3'),
                _topContents(icon: Icons.local_taxi, text: 'taxi4'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            _topRowContents(
              contents: <Widget>[
                _topContents(icon: Icons.local_taxi, text: 'taxi5'),
                _topContents(icon: Icons.local_taxi, text: 'taxi6'),
                _topContents(icon: Icons.local_taxi, text: 'taxi7'),
                _topContents(icon: Icons.local_taxi, text: 'taxi8', opacity: 0),
              ],
            ),
          ],
        ),
      );

  _topRowContents({@required List<Widget> contents}) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: contents,
      );

  // create top contents method
  _topContents(
      {@required IconData icon,
      double iconSize = 40,
      String text,
      double opacity = 1}) {
    var content = Column(
      children: <Widget>[
        Icon(icon, size: iconSize),
        Text(text),
      ],
    );
    Widget child;
    if (opacity == 0) {
      child = content;
    } else {
      child = InkWell(
        onTap: () {
          print(text);
        },
        child: content,
      );
    }
    return Opacity(
      opacity: opacity,
      child: child,
    );
  }

  final dummyMiddleItems = [
    'https://xlab-uploads-dev.s3.ap-northeast-2.amazonaws.com/banner/banner_200511_2.webp',
    'https://xlab-uploads-dev.s3.ap-northeast-2.amazonaws.com/banner/banner_200515_1.webp',
    'https://xlab-uploads-dev.s3.ap-northeast-2.amazonaws.com/banner/banner_200515_2.webp',
  ];

  _contentMiddle() {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
      ),
      items: dummyMiddleItems.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width, // 기기의 가로 길이
              margin: EdgeInsets.symmetric(horizontal: 5.0), // 좌우 여백 5
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  _contentBottom() {
    final items = List.generate(10, (index) {
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[Event] This is notice'),
      );
    });

    return ListView(
      physics: NeverScrollableScrollPhysics(), // 이 리스트의 스크롤 동작 금지
      shrinkWrap: true, // 이 리스트가 다른 스크롤 객체 안에 있다면 true 로 설정해야 함 - main 을 list 로 감싸놨기 때문에
      children: items,
    );
  }
}
