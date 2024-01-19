import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:paybackgold_app/misc/constants.dart';

class AdvertiseBanner extends StatelessWidget {
  final String imageUrl;

  // final String assetImage;
//
  const AdvertiseBanner({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageUrl,
      scale: 0.5,
    );

    //  Container(
    //   height: 200, // Set the desired height for your banner images
    //   width: Constants.deviceHeight(context) * 0.95,
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage(imageUrl),
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    // );
  }
}
