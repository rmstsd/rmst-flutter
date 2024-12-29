import 'package:flutter/material.dart';

class RtInput extends StatefulWidget {
  const RtInput({super.key, this.value = '', this.onChange, this.controller});

  final String value;
  final void Function(String value)? onChange;
  final TextEditingController? controller;

  @override
  createState() => _RtInputState();
}

class _RtInputState extends State<RtInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onChanged: (value) {
        widget.onChange?.call(value);
      },
    );
  }
}
