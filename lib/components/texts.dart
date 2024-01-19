import 'package:flutter/material.dart';
import 'package:paybackgold_app/misc/constants.dart';

class Text1 extends StatefulWidget {
  final Color textcolor;
  final String text;
  final double size;

  const Text1({
    super.key,
    required this.text,
    required this.size,
    required this.textcolor,
  });

  @override
  State<Text1> createState() => _Text1State();
}

class _Text1State extends State<Text1> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: widget.textcolor,
          fontSize: widget.size,
          fontWeight: FontWeight.w600,
        ));
  }
}

class Text2 extends StatefulWidget {
  final double size;
  final Color color;
  final String text;
  const Text2(
      {super.key, required this.text, required this.size, required this.color, required Color textcolor});

  @override
  State<Text2> createState() => _Text2State();
}

class _Text2State extends State<Text2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Constants.deviceWidth(context) * 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: widget.color,
                    fontSize: widget.size,
                    fontFamily: 'poppins',
                  )),
            ],
          ),
        ),
      ],
    );
    ;
  }
}
