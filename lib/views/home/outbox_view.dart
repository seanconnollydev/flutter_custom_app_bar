// import 'package:flutter/material.dart';

// import 'home_app_bar.dart';
// import 'home_screen_tabs.dart';

// class OutboxView extends HomeScreenTabView {
//   const OutboxView({Key? key, required Widget child})
//       : super(key: key, child: child);

//   @override
//   Widget controller({required Widget child}) {
//     return DefaultTabController(length: 3, child: child);
//   }

//   @override
//   Widget body() {
//     return const _OutboxBody();
//   }

//   @override
//   PreferredSizeWidget appBar() {
//     return HomeAppBar(
//       title: const Text('Outbox'),
//       actions: [
//         IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
//       ],
//     );
//   }
// }

// class _OutboxBody extends StatelessWidget {
//   const _OutboxBody({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Outbox'),
//     );
//   }
// }
