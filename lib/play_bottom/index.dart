import 'package:flutter/material.dart';

class PlayBottom extends StatefulWidget {
  const PlayBottom({super.key});

  @override
  _PlayBottomState createState() => _PlayBottomState();
}

class _PlayBottomState extends State<PlayBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('2323')],
      ),
    );
  }
}
