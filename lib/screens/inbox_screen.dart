import 'package:flutter/material.dart';
import '../features/home/home_screen_scaffold.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenScaffold(
      tab: HomeScreenTab.inbox,
      appBar: AppBar(
        title: const Text('Inbox'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: const Center(
        child: Text('Inbox'),
      ),
    );
  }
}
