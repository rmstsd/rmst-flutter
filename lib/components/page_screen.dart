import 'package:flutter/material.dart';

class PageScreen extends StatelessWidget {
  const PageScreen({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final display = SafeArea(child: child);

    return DefaultTextStyle.merge(
      style: TextStyle(fontSize: 20),
      child: display,
    );
  }
}
