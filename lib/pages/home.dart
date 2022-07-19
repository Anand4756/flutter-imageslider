import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("MEMES:)"),
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: Image.asset('memes1.jpg'),
            ),
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
