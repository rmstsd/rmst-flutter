import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Loading extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with SingleTickerProviderStateMixin {
  late dynamic _animation1;
  late dynamic _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000))
          ..addListener(() => setState(() {}))
          ..repeat();

    _animation1 = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          1.0,
          curve: Curves.linear,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var ld = Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: Colors.green.shade500, width: 4),
          top: BorderSide(color: Colors.green.shade500, width: 4),
          right: BorderSide(color: Colors.green.shade500, width: 4),
        ),
        borderRadius: BorderRadius.circular(100),
      ),
    );

    return Transform.rotate(angle: (_animation1.value) * 2 * pi, child: ld);
  }
}
