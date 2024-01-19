import 'package:flutter/material.dart';
import 'package:paybackgold_app/misc/constants.dart';

class ResetLinkPopup extends StatelessWidget {
  final String message;

  ResetLinkPopup({required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Constants.appLightPrimaryColor(),
      title: const Text('Reset Link Sent'),
      content: Text(message),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Text(
            'OK',
            style: TextStyle(color: Color(0xFF8B0000)),
          ),
        ),
      ],
    );
  }
}
