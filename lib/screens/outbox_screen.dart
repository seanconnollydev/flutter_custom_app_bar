import 'package:flutter/material.dart';
import '../views/home/home_screen_tabs.dart';

class OutboxScreen extends StatelessWidget {
  const OutboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: HomeScreenScaffold(
        tab: HomeScreenTab.outbox,
        appBar: AppBar(
          title: const Text('Outbox'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Sent'),
              Tab(text: 'Scheduled'),
              Tab(
                text: 'Draft',
              )
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          ],
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Sent'),
            ),
            Center(
              child: Text('Scheduled'),
            ),
            Center(
              child: Text('Draft'),
            ),
          ],
        ),
      ),
    );
  }
}
