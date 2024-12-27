import 'package:flutter/widgets.dart';
import 'package:rmst_flutter/home_page/index.dart';
import 'package:rmst_flutter/play_bottom/index.dart';

class AppPage extends StatefulWidget {
  const AppPage({
    super.key,
  });

  @override
  createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OldHomePage(),
        PlayBottom(),
      ],
    );
  }
}
