import 'package:flutter/material.dart';

class TopSearchBar extends StatefulWidget {
  const TopSearchBar({
    super.key,
  });

  @override
  State<TopSearchBar> createState() => _TopSearchBarState();
}

class _TopSearchBarState extends State<TopSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border(bottom: BorderSide(color: Colors.grey.shade200, width: 1)),
      ),
      child: Row(
        spacing: 10,
        children: [
          Text(
            '聚合大会',
            style: TextStyle(
              backgroundColor: const Color.fromARGB(255, 238, 210, 208),
            ),
          ),
          Expanded(
            child: TextField(
              style: TextStyle(
                color: Colors.black,
                backgroundColor: const Color.fromARGB(255, 158, 240, 255),
              ),
              decoration: InputDecoration(
                hintText: "请输入内容搜索",
                hintStyle: TextStyle(color: Colors.grey.shade400),
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
