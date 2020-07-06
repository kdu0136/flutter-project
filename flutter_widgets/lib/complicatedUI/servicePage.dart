import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key key}): super(key: key);
  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
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
  void didUpdateWidget(ServicePage oldWidget) {
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
    return Center(
      child: Text('Service Page'),
    );
  }
}
