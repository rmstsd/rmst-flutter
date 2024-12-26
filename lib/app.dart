import 'package:flutter/material.dart';
import 'package:rmst_flutter/components/page_screen.dart';
import 'package:rmst_flutter/pages/home/home.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final mainApp = WidgetsApp(
      color: Colors.white,
      title: 'rmst-flutter',
      pageRouteBuilder: <T>(settings, builder) {
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, _, __) => builder(context),
        );
      },
      home: PageScreen(child: HomePage()),
      debugShowCheckedModeBanner: false,
    );

    return DefaultTextStyle.merge(
      style: TextStyle(
        fontSize: 24,
        color: Colors.black,
      ),
      child: mainApp,
    );
  }
}
