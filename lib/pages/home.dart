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
            const Text(
              "MEMES",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            //controller to toggle using pageview
            //page view, playlist half completed
            Container(
                height: 500,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  const Cards(
                    image: 1,
                  ),
                  const Cards(
                    image: 2,
                  ),
                  const Cards(
                    image: 3,
                  )
                ])),
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
