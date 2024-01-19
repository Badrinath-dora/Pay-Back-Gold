import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:paybackgold_app/misc/constants.dart';

class GrtImageSlider extends StatefulWidget {
  const GrtImageSlider({super.key});

  @override
  State<GrtImageSlider> createState() => _GrtImageSliderState();
}

class _GrtImageSliderState extends State<GrtImageSlider> {
  int _currentIndex = 0;

  final List<String> images = [
    // 'assets/coin1.jpg',
    // 'assets/coin2.jpg',
    // 'assets/coin3.jpg',
    'assets/ring1.jpg',
    'assets/ring2.jpg',
    'assets/ring3.jpg',
    // Add more image paths here
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: images.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: Constants.deviceWidth(context) * 0.95,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            // height: 400.0,
            height: Constants.deviceHeight(context) * 0.45,
            initialPage: 0,
            enableInfiniteScroll: true,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.map((image) {
            int index = images.indexOf(image);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Color(0xFF8B0000) : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
