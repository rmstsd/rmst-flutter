import 'dart:math';

import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:flutter/services.dart';

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
        appBar: AppBar(
          toolbarHeight: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Colors.transparent,
          ),
        ),
        body: SafeArea(
          child: AppPage(),
        ),
        drawer: Container(
          width: 200,
          decoration: BoxDecoration(color: Colors.white),
          child: SafeArea(
            child: Column(
              children: [Text('Drawer'), Text('Drawer2')],
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
    );

    return OKToast(
      position: ToastPosition.bottom,
      child: mainApp,
    );
  }
}
