import 'package:flutter/material.dart';

class RtTabs extends StatefulWidget {
  const RtTabs({super.key, required this.tabList});

  final List<String> tabList;

  @override
  createState() => _RtTabsState();
}

class _RtTabsState extends State<RtTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        spacing: 10,
        children: widget.tabList
            .map(
              (item) => Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey)),
                  ),
                  child: Text(item),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
