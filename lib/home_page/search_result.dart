import 'dart:math';

import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({
    super.key,
  });

  @override
  createState() => _SearchResultState();
}

int getRandomIntInRange(int min, int max) {
  final random = Random();
  return min + random.nextInt(max - min + 1);
}

class _SearchResultState extends State<SearchResult> {
  final list = List.generate(50, (index) {
    return DateTime.now().millisecondsSinceEpoch.toRadixString(36) *
        getRandomIntInRange(2, 4);
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
                  child: Image.asset(
                    'lib/images/a.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 4),
                  height: 40,
                  child: Text(
                    item,
                    style: TextStyle(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
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
      childAspectRatio: 0.8,
      children: cards,
    );

    return Expanded(
      child: display,
    );
  }
}
