import 'package:flutter/material.dart';
import 'package:flutter_dev/Drawer/drawer.dart';
import 'package:flutter_dev/Register/Image_button.dart';
import 'package:marquee/marquee.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerBar(),
      appBar: AppBar(
        title: const Text("HomePage"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
          Marquee(
            text: 'There once was a boy who told this story about a boy: "',
          )
        ],
      ),
      body: ImagePage(),
    );
  }
}
