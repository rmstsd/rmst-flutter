import 'package:flutter/material.dart';
import 'package:rmst_flutter/components/button.dart';
import 'package:rmst_flutter/components/tabs.dart';
import 'package:rmst_flutter/utils/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        RtTabs(tabList: ['aaaa', 'bbbbb']),
        Expanded(
          child: ListView(
            children: genList(66).map((item) => Text(item['text'])).toList(),
          ),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [RtButton('首页'), RtButton('我的')],
          ),
        ),
      ],
    );
  }
}
