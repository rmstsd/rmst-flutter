import 'package:flutter/material.dart';
import 'package:rmst_flutter/components/button.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 4,
            children: [
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.menu),
                padding: EdgeInsets.all(0),
              ),
              Text(
                '搜索',
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
            ],
          ),
          Wrap(
            spacing: 6,
            children: [
              RtButton('按钮1'),
              RtButton('按钮2'),
            ],
          )
        ],
      ),
    );
  }
}
