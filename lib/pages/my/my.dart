import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rmst_flutter/components/button.dart';
import 'package:rmst_flutter/components/loading.dart';
import 'package:rmst_flutter/components/time_show.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

class My extends StatefulWidget {
  const My({super.key});

  @override
  createState() => MyState();
}

class MyState extends State<My> {
  var disabled = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        RtButton(
          'aaaff',
          disabled: disabled,
          onTap: () {
            setState(() {
              disabled = !disabled;
            });

            Timer(Duration(seconds: 1), () {
              setState(() {
                disabled = false;
              });
            });
          },
        ),
        RtButton(
          '哈哈哈',
          loading: true,
        ),
        RtButton(
          '禁用',
          disabled: true,
        ),
        RtLoading(),
        RtTimeShow(),
        RtButton(
          'try',
          onTap: () {
            print('try');
          },
        ),
      ],
    );
  }
}
