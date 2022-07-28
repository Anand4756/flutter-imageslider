import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final int image;

  const Cards({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23), color: Colors.red),
        width: 300,
        child: Image.asset('assets/memes${image}.jpg'),
      ),
    );
  }
}
