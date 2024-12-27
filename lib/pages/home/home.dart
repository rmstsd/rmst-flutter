import 'package:flutter/material.dart';
import 'package:rmst_flutter/components/button.dart';
import 'package:rmst_flutter/components/tabs.dart';
import 'package:rmst_flutter/pages/my/my.dart';
import 'package:rmst_flutter/utils/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var activeIndex = 0;

  var bottomTabKey = 'home';

  @override
  Widget build(BuildContext context) {
    final homeDisplay = Column(
      children: [
        RtTabs(
          tabList: ['aaaa', 'bbbbb'],
          activeIndex: activeIndex,
          onChange: (index) => {
            setState(() {
              activeIndex = index;
            }),
          },
        ),
        Text(
          activeIndex.toString(),
        ),
        Expanded(
          child: ListView(
            children: genList(66).map((item) => Text(item['text'])).toList(),
          ),
        ),
      ],
    );

    final myDisplay = My();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: bottomTabKey == 'home' ? homeDisplay : myDisplay),
        Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RtButton(
                '首页',
                textColor: bottomTabKey == 'home' ? Colors.green : null,
                onTap: () {
                  setState(() {
                    bottomTabKey = 'home';
                  });
                },
              ),
              RtButton(
                '我的',
                textColor: bottomTabKey == 'my' ? Colors.green : null,
                onTap: () {
                  setState(() {
                    bottomTabKey = 'my';
                  });
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
