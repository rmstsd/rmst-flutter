import 'package:flutter/widgets.dart';
import 'package:rmst_flutter/components/button.dart';

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
            print('aaa');
            setState(() {
              disabled = !disabled;
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
      ],
    );
  }
}
