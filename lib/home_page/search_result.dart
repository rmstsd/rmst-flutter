import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({
    super.key,
  });

  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    var display = Container(
      decoration:
          BoxDecoration(color: const Color.fromARGB(255, 239, 222, 255)),
      child: Text('Search Result'),
    );

    return Expanded(
      child: display,
    );
  }
}
