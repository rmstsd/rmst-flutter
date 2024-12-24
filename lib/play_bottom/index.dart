import 'package:flutter/material.dart';
import 'package:rmst_flutter/play_bottom/play_bar.dart';

class PlayBottom extends StatefulWidget {
  const PlayBottom({super.key});

  @override
  createState() => _PlayBottomState();
}

class _PlayBottomState extends State<PlayBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              'lib/images/a.png',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              // decoration: BoxDecoration(color: Colors.amberAccent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'thistle',
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
                  ),
                  PlayBar()
                ],
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                iconSize: 34,
                onPressed: () => {},
                icon: Icon(Icons.play_arrow),
              ),
              IconButton(
                iconSize: 34,
                onPressed: () => {},
                icon: Icon(Icons.chevron_right_rounded),
              ),
            ],
          )
        ],
      ),
    );
  }
}
