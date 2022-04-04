// import 'package:flutter/material.dart';
// import 'package:flutter_custom_app_bar/views/home/home_screen_tabs.dart';
// import 'package:go_router/go_router.dart';

// class HomeScreenArguments {
//   final HomeScreenTab tab;

//   HomeScreenArguments(this.tab);
// }

// class HomeScreen extends StatefulWidget {
//   final HomeScreenArguments args;

//   const HomeScreen({Key? key, required this.args}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final tabIndex = widget.args.tab.index;
//     /*
//     return HomeScreenViewBuilder(
//       currentView: widget.args.tab, // TODO: Consider changing this `view`
//       builder: (context, view) {
//         return Scaffold(
//           appBar: controller.appBar(),
//           body: controller.body(),
//           bottomNavigationBar: BottomNavigationBar(),
//         )
//       }
//     )
//   */

//     return HomeScreenTabView.controller(
//       child: Scaffold(
//         appBar: view.appBar(),
//         body: view.body(),
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: tabIndex,
//           onTap: (value) {
//             context.go('/',
//                 extra: HomeScreenArguments(HomeScreenTab.values
//                     .firstWhere((tab) => tab.index == value)));
//           },
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.mail),
//               label: 'Inbox',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.send),
//               label: 'Outbox',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.insights),
//               label: 'Insights',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
