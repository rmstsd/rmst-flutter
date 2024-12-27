import 'package:flutter/widgets.dart';
import 'package:rmst_flutter/utils/colors.dart';

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
