import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rmst_flutter/components/button.dart';
import 'package:rmst_flutter/components/input.dart';
import 'package:rmst_flutter/components/loading.dart';
import 'package:rmst_flutter/components/time_show.dart';
import 'package:rmst_flutter/utils/index.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

class My extends StatefulWidget {
  const My({super.key});

  @override
  createState() => MyState();
}

class MyState extends State<My> {
  var disabled = false;

  var value = '';

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
        RtInput(value: value),
        TDSwitch(),
        RtButton(value.isEmpty ? '按钮' : value, onTap: () {
          print(value);
          setState(() {
            value = randomString();
          });

          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) {
              return Container(
                width: double.infinity,
                child: RtButton(
                  'data',
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              );
            },
          );
        })
      ],
    );
  }
}
