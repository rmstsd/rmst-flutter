import 'dart:math';

import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({
    super.key,
  });

  @override
  _SearchResultState createState() => _SearchResultState();
}

int getRandomIntInRange(int min, int max) {
  final random = Random();
  return min + random.nextInt(max - min + 1);
}

class _SearchResultState extends State<SearchResult> {
  final list = List.generate(333, (index) {
    return DateTime.now().millisecondsSinceEpoch.toRadixString(36);
    // *
    // getRandomIntInRange(2, 30);
  });

  @override
  Widget build(BuildContext context) {
    final cards = list
        .map(
          (item) => Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      'lib/images/a.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  color: Colors.pink,
                  height: 30,
                  child: Text('item'),
                )
              ],
            ),
          ),
        )
        .toList();

    var display = GridView.count(
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      crossAxisCount: 3,
      childAspectRatio: 2,
      children: cards,
    );

    return Expanded(
      child: display,
    );
  }
}
