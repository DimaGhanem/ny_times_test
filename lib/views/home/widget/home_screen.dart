import 'package:flutter/material.dart';

import 'drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          actionsIconTheme: Theme.of(context).iconTheme,
          title: Text('NY Times Most Popular'),
          actions: [
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.more_vert,
              ),
            ),
          ],
        ),
        body: Container());
  }
}
