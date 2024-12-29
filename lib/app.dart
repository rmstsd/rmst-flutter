import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    final mainApp = MaterialApp(
      color: Color.fromRGBO(255, 255, 255, 1),
      title: 'rmst-flutter',
      theme: ThemeData(
        textTheme: TextTheme(),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: PageScreen(child: HomePage()),
      ),
      debugShowCheckedModeBanner: false,
    );

    return mainApp;
  }
}
