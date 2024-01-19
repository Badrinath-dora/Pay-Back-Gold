import 'package:flutter/material.dart';
import 'package:paybackgold_app/components/texts.dart';
import 'package:paybackgold_app/misc/constants.dart';

class CustomRectangle extends StatelessWidget {
  final double height;
  final double width;
  final double borderWidth;
  final String assetImage;
  final String text1;
  final String text2;
  final int size;

  const CustomRectangle({
    Key? key,
    required this.height,
    required this.width,
    required this.borderWidth,
    required this.assetImage,
    required this.text1,
    required this.text2,
    required this.size,
    required double elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 234, 215, 215),
          width: borderWidth,
        ),
        color: Colors.white, // Set the background color to white
      ),
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            assetImage,
            width: 120,
            height: 110,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text1(
                  text: text1,
                  size: 20,
                  textcolor: Constants.appPrimaryColor(),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text2(
                  text: text2,
                  size: 18,
                  color: Colors.grey,
                  textcolor: Colors.grey,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomRectangle1 extends StatelessWidget {
  final double height;
  final double width;
  final Function()? onPressed;
  // final double borderWidth;
  final String assetImage;
  final String text1;

  final double elevation;
  // final String text2;
  // final int size;

  const CustomRectangle1({
    Key? key,
    required this.height,
    required this.width,
    // required this.borderWidth,
    required this.assetImage,
    required this.text1,
    required this.elevation,
    required this.onPressed,
    // required this.text2,
    // required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        child: Card(
          elevation: 4.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
            children: [
              Image.asset(
                assetImage,
                width: 120,
                height: 110,
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Text1(
                      text: text1,
                      size: 17,
                      textcolor: Colors.black,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // Text2(
                    //   text: text2,
                    //   size: 18,
                    //   color: Colors.grey,
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRectangle2 extends StatefulWidget {
  final double height;
  final double width;
  final String assetImage;
  final String text1;
  final String text2;
  final double elevation;
  final Function()? onPressed;

  const CustomRectangle2({
    Key? key,
    required this.height,
    required this.width,
    required this.assetImage,
    required this.text1,
    required this.elevation,
    required this.text2,
    required this.onPressed,
  }) : super(key: key);

  @override
  _CustomRectangle2State createState() => _CustomRectangle2State();
}

class _CustomRectangle2State extends State<CustomRectangle2> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: widget.height,
        width: widget.width,
        child: Card(
          elevation: widget.elevation,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    widget.assetImage,
                    width: 120,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.text1,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.text2,
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF8B0000),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 5,
                right: 5,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  child: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRectangle3 extends StatelessWidget {
  final double height;
  final double width;
  final Function()? onPressed;
  // final double borderWidth;
  final String assetImage;
  final String text1;

  final double elevation;
  // final String text2;
  // final int size;

  const CustomRectangle3({
    Key? key,
    required this.height,
    required this.width,
    // required this.borderWidth,
    required this.assetImage,
    required this.text1,
    required this.elevation,
    required this.onPressed,
    // required this.text2,
    // required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        child: Card(
          elevation: 4.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
            children: [
              Image.asset(
                assetImage,
                width: 50,
                height: 60,
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Text1(
                      text: text1,
                      size: 17,
                      textcolor: Colors.black,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // Text2(
                    //   text: text2,
                    //   size: 18,
                    //   color: Colors.grey,
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
