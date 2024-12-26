import 'package:flutter/material.dart';

class RtTabs extends StatefulWidget {
  RtTabs({
    super.key,
    required this.tabList,
    required this.activeIndex,
    required this.onChange,
  });

  int activeIndex;
  final void Function(int index) onChange;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: widget.tabList.asMap().entries.map((item) {
          var display = Stack(
            alignment: Alignment.center,
            children: [
              Text(item.value),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.activeIndex == item.key
                        ? Color.fromARGB(255, 175, 175, 175)
                        : Colors.transparent,
                  ),
                ),
              ),
            ],
          );

          return GestureDetector(
            onTap: () => setState(() {
              // widget.activeIndex = item.key;

              widget.onChange(item.key);
            }),
            child: display,
          );
        }).toList(),
      ),
    );
  }
}
