import 'package:flutter/material.dart';
import '../views/home/home_screen_tabs.dart';

class OutboxScreen extends StatelessWidget {
  const OutboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenScaffold(
      tab: HomeScreenTab.outbox,
      appBar: AppBar(
        title: const Text('Outbox'),
      ),
      body: const Center(
        child: Text('Outbox'),
      ),
    );
  }
}
