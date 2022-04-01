import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  final Widget? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;

  const HomeAppBar({Key? key, this.title, this.actions, this.bottom})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          child: Text('SC'),
        ),
      ),
      title: title,
      actions: actions,
      bottom: bottom,
    );
  }
}
