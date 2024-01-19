import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:paybackgold_app/Screens/home_screen.dart';
import 'package:paybackgold_app/components/buttons.dart';
import 'package:paybackgold_app/misc/constants.dart';

class Advertisingpopup extends StatefulWidget {
  const Advertisingpopup({super.key});

  @override
  State<Advertisingpopup> createState() => _AdvertisingpopupState();
}

class _AdvertisingpopupState extends State<Advertisingpopup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 350,
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text("WELCOME USER",
              style: TextStyle(
                  fontSize: 19,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 10,
          ),
          const Image(
            image: AssetImage(
              'assets/advertisingpopup.jpg',
            ),
            width: 320,
          ),
          const SizedBox(
            height: 10,
          ),
          Button1(
            text: "SHOP NOW",
            width: 320,
            height: 45,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
