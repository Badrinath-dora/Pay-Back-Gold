import 'package:flutter/material.dart';
import 'package:paybackgold_app/misc/constants.dart';

class Button1 extends StatefulWidget {
  final String text;
  final double width;
  final double height;

  final VoidCallback onPressed;
  // final Icon icon; // Add this line

  const Button1({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.onPressed,
    // required this.icon,
  });

  @override
  State<Button1> createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Constants.appPrimaryColor(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.pedal_bike),
            // SizedBox(
            //   width: Constants.deviceWidth(context) * 0.15,
            // ),
            Text(
              widget.text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatefulWidget {
  final String text;
  final double width;
  final double height;
  final Icon icon;

  // final Icon icon; // Add this line

  const Button({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.icon,
    // required this.icon,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Constants.appPrimaryColor()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.icon,
            Text(
              widget.text,
              style: const TextStyle(
                  color: Colors.white,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
