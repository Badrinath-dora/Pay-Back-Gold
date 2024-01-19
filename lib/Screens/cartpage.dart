import 'package:flutter/material.dart';
import 'package:paybackgold_app/components/appdrawer.dart';
import 'package:paybackgold_app/components/myappbar.dart';
import 'package:paybackgold_app/misc/constants.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.appLightPrimaryColor(),
      drawer: AppDrawer(),
      appBar: const Myappbar(shownavdrawer: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          height: Constants.deviceHeight(context) * 0.22,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: Constants.deviceHeight(context) * 0.15,
                    width: Constants.deviceWidth(context) * 0.36,
                    
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
