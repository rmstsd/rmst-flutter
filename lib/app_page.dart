import 'package:flutter/material.dart';
import 'package:rmst_flutter/home_page/index.dart';
import 'package:rmst_flutter/play_bottom/index.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomePage(),
        PlayBottom(),
      ],
    );
  }
}
