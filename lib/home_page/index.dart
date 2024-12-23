import 'package:flutter/material.dart';
import 'package:rmst_flutter/home_page/search_result.dart';

import 'package:rmst_flutter/home_page/top_bar.dart';
import 'package:rmst_flutter/home_page/top_search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userName = '';

  add(nn) {
    setState(() {
      userName = nn;
    });
  }

  final textCtrl = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    textCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [TopBar(), TopSearchBar(), SearchResult()],
    );

    var container = Container(
      decoration: BoxDecoration(),
      child: column,
    );

    return Expanded(
      child: container,
    );
  }
}
