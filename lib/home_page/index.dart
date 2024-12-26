import 'package:flutter/material.dart';
import 'package:rmst_flutter/home_page/search_result.dart';

import 'package:rmst_flutter/home_page/top_bar.dart';
import 'package:rmst_flutter/home_page/top_search_bar.dart';

class OldHomePage extends StatefulWidget {
  const OldHomePage({
    super.key,
  });

  @override
  State<OldHomePage> createState() => _OldHomePageState();
}

class _OldHomePageState extends State<OldHomePage> {
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
