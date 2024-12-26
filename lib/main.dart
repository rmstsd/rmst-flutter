import 'package:flutter/material.dart';
import 'package:rmst_flutter/app.dart';

void main() {
  runApp(const App());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return WidgetsApp(
//       debugShowCheckedModeBanner: false,
//       color: Colors.white,
//       pageRouteBuilder: <T>(settings, builder) {
//         return PageRouteBuilder<T>(
//           settings: settings,
//           pageBuilder: (context, animation, secondaryAnimation) {
//             return Center(
//               child: Container(width: 100, height: 100, color: Colors.red),
//             );
//           },
//         );
//       },
//       home: Text('Hello'),
//     );
//   }
// }

// class Rr<T> extends PageRoute<T> with MaterialRouteTransitionMixin<T> {
//   Rr({
//     required this.builder,
//     super.settings,
//     super.requestFocus,
//     this.maintainState = true,
//     super.fullscreenDialog,
//     super.allowSnapshotting = true,
//     super.barrierDismissible = false,
//   }) {
//     assert(opaque);
//   }

//   final WidgetBuilder builder;

//   @override
//   Widget buildContent(BuildContext context) => builder(context);

//   @override
//   final bool maintainState;
// }
