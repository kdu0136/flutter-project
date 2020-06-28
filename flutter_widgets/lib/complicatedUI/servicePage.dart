import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key key}): super(key: key);
  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Service Page'),
    );
  }
}
