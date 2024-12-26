import 'package:flutter/material.dart';

class PageScreen extends StatelessWidget {
  const PageScreen({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: child,
      ),
    );
  }
}
