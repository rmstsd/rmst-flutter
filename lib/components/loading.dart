import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RtLoading extends StatefulWidget {
  const RtLoading({
    super.key,
    this.color = const Color.fromARGB(255, 161, 235, 163),
  });

  final Color color;

  @override
  State<StatefulWidget> createState() => _RtLoadingState();
}

class _RtLoadingState extends State<RtLoading>
    with SingleTickerProviderStateMixin {
  late Animation _animation1;
  late AnimationController _controller;

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
        curve: const Interval(0.0, 1.0),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();

    print('rtloading dispose');
  }

  @override
  Widget build(BuildContext context) {
    var ld = SvgPicture.asset(
      width: 20,
      height: 20,
      colorFilter: ColorFilter.mode(widget.color, BlendMode.srcIn),
      'lib/images/loading.svg',
    );

    return Transform.rotate(angle: (_animation1.value) * 2 * pi, child: ld);
  }
}
