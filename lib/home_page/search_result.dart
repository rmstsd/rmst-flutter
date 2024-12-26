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
  final list = List.generate(30, (index) {
    return DateTime.now().millisecondsSinceEpoch.toRadixString(36) *
        getRandomIntInRange(2, 8);
  });

  @override
  Widget build(BuildContext context) {
    final cards = list
        .map(
          (item) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  'lib/images/a.png',
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                item,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        )
        .toList();

    var display = GridView.count(
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      crossAxisCount: 3,
      childAspectRatio: 0.75,
      children: cards,
    );

    return Expanded(
      child: display,
    );
  }
}
