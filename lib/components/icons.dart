import 'package:flutter/material.dart';
import 'package:paybackgold_app/misc/constants.dart';

class Menubar1 extends StatefulWidget {
  final Icon icon;
  const Menubar1({super.key, required this.icon});

  @override
  State<Menubar1> createState() => _Menubar1State();
}

class _Menubar1State extends State<Menubar1> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 30,
      icon: widget.icon,
      color: Constants.appPrimaryColor(),
      onPressed: () {},
    );
  }
}
