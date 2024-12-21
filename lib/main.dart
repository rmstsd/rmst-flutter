import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import 'package:rmst_flutter/app_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final mainApp = MaterialApp(
      title: 'rmst-flutter',
      theme: ThemeData(
        splashColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      home: Scaffold(
        body: AppPage(),
        backgroundColor: Colors.white,
        drawer: Text('234234'),
      ),
      debugShowCheckedModeBanner: false,
    );

    return OKToast(
      position: ToastPosition.bottom,
      child: mainApp,
    );
  }
}
