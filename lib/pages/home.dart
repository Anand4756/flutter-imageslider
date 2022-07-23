import 'package:flutter/material.dart';

import '../utils/cards.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("MEMES:)"),
            Container(
                height: 500,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [const Cards(), const Cards(), const Cards()])),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: () {}, child: Text("Previous")),
                TextButton(onPressed: () {}, child: Text("Next"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
