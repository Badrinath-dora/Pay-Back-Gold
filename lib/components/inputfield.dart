import 'package:flutter/material.dart';

import '../misc/constants.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final IconData? icon;
  final bool obscureText;

  // Added labelTextColor property

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.icon,
    this.obscureText = false,

    // Added labelTextColor to the constructor
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Constants.deviceHeight(context) * 0.8,
      height: 75,
      child: TextFormField(
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          enabledBorder: Constants.ifoutlineborder(),
          focusedBorder: Constants.ifoutlineborder(),
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: Constants.appPrimaryColor(), // Use labelTextColor property
          ),
          hintText: widget.hintText,
          prefixIcon: widget.icon != null
              ? Icon(
                  widget.icon,
                  color: Constants.appPrimaryColor(),
                )
              : null,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
