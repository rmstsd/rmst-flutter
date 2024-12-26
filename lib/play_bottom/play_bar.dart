import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlayBar extends StatefulWidget {
  const PlayBar({
    super.key,
  });

  @override
  State<PlayBar> createState() => _PlayBarState();
}

class _PlayBarState extends State<PlayBar> {
  _updateValueByLocalPositionDx(double dx) {
    final renderBox = prgKey.currentContext?.findRenderObject() as RenderBox;
    final percent = clampDouble(dx / renderBox.size.width, 0, 1);

    setState(() {
      value = percent;
    });
  }

  var value = 0.5;

  GlobalKey prgKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final display = Container(
      margin: EdgeInsets.only(top: 2),
      height: 20,
      child: Stack(
        fit: StackFit.expand,
        children: [
          GestureDetector(
            onHorizontalDragUpdate: (details) {
              _updateValueByLocalPositionDx(details.localPosition.dx);
            },
            onHorizontalDragEnd: (details) {
              _updateValueByLocalPositionDx(details.localPosition.dx);
            },
            child: LinearProgressIndicator(
              key: prgKey,
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
