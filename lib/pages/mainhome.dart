import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Mainhome extends StatefulWidget {
  const Mainhome({Key? key}) : super(key: key);

  @override
  State<Mainhome> createState() => _MainhomeState();
}

class _MainhomeState extends State<Mainhome> {
  final controller = CarouselController();
  int activeindex = 0;
  final urlImages = ['1', '2', '3', '4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
              carouselController: controller,
              options: CarouselOptions(
                height: 400,
                initialPage: 0,
                onPageChanged: (index, reason) =>
                    setState(() => activeindex = index),
              ),
              itemCount: urlImages.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                final urlImage = urlImages[itemIndex];
                return buildImage(urlImage, itemIndex);
              }),
          const SizedBox(
            height: 32,
          ),
          buildIndicator(),
          buildButton(),
        ],
      ),
    ));
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.asset(
          'assets/memes${index + 1}.jpg',
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeindex,
        count: urlImages.length,
        effect: SlideEffect(dotWidth: 20, dotHeight: 20),
      );

  Widget buildButton({bool stretch = false}) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(onPressed: previous, child: Icon(Icons.arrow_back)),
          ElevatedButton(onPressed: next, child: Icon(Icons.arrow_forward))
        ],
      );

  void previous() =>
      controller.previousPage(duration: Duration(microseconds: 500));
  void next() => controller.nextPage(duration: Duration(microseconds: 500));
}
