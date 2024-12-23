import 'package:flutter/material.dart';

class RtButton extends StatefulWidget {
  const RtButton(
    this.data, {
    super.key,
  });

  final String data;

  @override
  State<StatefulWidget> createState() => _RtButtonState();
}

enum ButtonStatus { defaultState, active, disable }

class _RtButtonState extends State<RtButton> {
  ButtonStatus _buttonStatus = ButtonStatus.defaultState;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        print('点击了按钮'),
      },
      onTapDown: (details) => {
        setState(() {
          _buttonStatus = ButtonStatus.active;
        })
      },
      onTapUp: (details) => {
        setState(() {
          _buttonStatus = ButtonStatus.defaultState;
        })
      },
      onTapCancel: () => {
        setState(() {
          _buttonStatus = ButtonStatus.defaultState;
        })
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _buttonStatus == ButtonStatus.active
                  ? Color.fromRGBO(0, 0, 0, 0.3)
                  : Colors.black,
              width: 1,
            ),
          ),
        ),
        child: Text(
          widget.data,
          style: TextStyle(
            color: _buttonStatus == ButtonStatus.active
                ? Color.fromRGBO(0, 0, 0, 0.3)
                : Colors.black,
          ),
        ),
      ),
    );
  }
}
