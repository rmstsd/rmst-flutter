import 'package:flutter/material.dart';

class PlayBar extends StatefulWidget {
  const PlayBar({super.key});

  @override
  State<PlayBar> createState() => _PlayBarState();
}

class _PlayBarState extends State<PlayBar> {
  onTapDown(TapDownDetails detail) {
    final renderBox = anchorKey.currentContext?.findRenderObject() as RenderBox;
    final percent = detail.localPosition.dx / renderBox.size.width;

    setState(() {
      value = percent;
    });
  }

  var value = 0.5;

  GlobalKey anchorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final display = Container(
      margin: EdgeInsets.only(top: 2),
      height: 20,
      child: Stack(
        fit: StackFit.expand,
        children: [
          GestureDetector(
            onTapDown: onTapDown,
            child: LinearProgressIndicator(
              key: anchorKey,
              borderRadius: BorderRadius.circular(2),
              value: value,
              valueColor: AlwaysStoppedAnimation(Colors.purple.shade50),
              backgroundColor: Colors.grey.shade100,
            ),
          ),
          Positioned(
            right: 4,
            child: IgnorePointer(
              child: Text(
                "03:15 / 05:30",
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return display;
  }
}
