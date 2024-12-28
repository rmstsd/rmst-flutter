import 'package:flutter/widgets.dart';
import 'package:flutter/scheduler.dart';

class RtTimeShow extends StatefulWidget {
  const RtTimeShow({super.key});

  @override
  createState() => _RtTimeShowState();
}

class _RtTimeShowState extends State<RtTimeShow> {
  var text = DateTime.now().toString();

  late Ticker _ticker;

  @override
  void initState() {
    super.initState();

    _ticker = Ticker((Duration elapsed) {
      setState(() {
        text = DateTime.now().toString();
      });
    });

    _ticker.start();
  }

  @override
  void dispose() {
    super.dispose();
    _ticker.dispose();
    print('Timer-show disposed');
  }

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
