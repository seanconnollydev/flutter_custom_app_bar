import 'package:flutter/material.dart';

import 'inbox_view.dart';
import 'insights_view.dart';
import 'outbox_view.dart';

abstract class HomeScreenTabView {
  Widget body();

  PreferredSizeWidget appBar();

  static HomeScreenTabView getView(HomeScreenTab tab) {
    switch (tab) {
      case HomeScreenTab.inbox:
        return InboxView();
      case HomeScreenTab.outbox:
        return OutboxView();
      case HomeScreenTab.insights:
        return InsightsView();
    }
  }
}

enum HomeScreenTab { inbox, outbox, insights }
