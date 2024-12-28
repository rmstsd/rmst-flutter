import 'package:flutter/material.dart';
import 'package:rmst_flutter/components/loading.dart';

enum ButtonStatus { defaultState, active }

class RtButton extends StatefulWidget {
  const RtButton(
    this.data, {
    super.key,
    this.onTap,
    this.textColor,
    this.disabled = false,
    this.loading = false,
  });

  final String data;

  final bool disabled;
  final bool loading;
  final Color? textColor;

  final Function()? onTap;

  @override
  State<StatefulWidget> createState() => _RtButtonState();
}

class _RtButtonState extends State<RtButton> {
  var _buttonStatus = ButtonStatus.defaultState;

  _onTapDown(details) {
    setState(() {
      _buttonStatus = ButtonStatus.active;
    });
  }

  _onTapUp(details) {
    setState(() {
      _buttonStatus = ButtonStatus.defaultState;
    });
  }

  _onTapCancel() {
    setState(() {
      _buttonStatus = ButtonStatus.defaultState;
    });
  }

  @override
  dispose() {
    super.dispose();
  }

  _getBgColor() {
    if (widget.disabled || widget.loading) {
      return Colors.green.shade200;
    } else {
      if (_buttonStatus == ButtonStatus.active) {
        return Colors.green.shade700;
      }

      return Colors.green.shade500;
    }
  }

  var color = Colors.green.shade500;

  @override
  Widget build(BuildContext context) {
    var display = Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(
          color: _getBgColor(),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.loading)
              RtLoading(
                color: Colors.white,
              ),
            Text(
              widget.data,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ));

    if (widget.disabled || widget.loading) {
      return display;
    }

    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: display,
    );
  }
}
