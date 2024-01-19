import 'package:flutter/material.dart';
import 'package:paybackgold_app/misc/constants.dart';

class Tiles extends StatefulWidget {
  // final String text; tring date;
  final String leading;
  final String trailing;
  // final String time;
  const Tiles({
    super.key,
    required this.leading,
    required this.trailing,
  });

  @override
  State<Tiles> createState() => _TilesState();
}

class _TilesState extends State<Tiles> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7, bottom: 7, left: 7, right: 7),
      child: Container(
        width: Constants.deviceWidth(context) * 0.85,
        height: Constants.deviceHeight(context) * 0.05,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(color: Color.fromARGB(255, 203, 203, 203)),
        ),
        child: ListTile(
          leading: Text(widget.leading),
          trailing: Text(widget.trailing),
        ),
      ),
    );
  }
}

//word detail expansion tile
class WordExpansionTile extends StatefulWidget {
  final String title;

  const WordExpansionTile({
    super.key,
    required this.title,
  });

  @override
  State<WordExpansionTile> createState() => _WordExpansionTileState();
}

class _WordExpansionTileState extends State<WordExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        widget.title,
        style: const TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Constants.appPrimaryColor()),
            child: Column(
              children: const [
                Tiles(leading: 'Stone Name', trailing: '901'),
                Tiles(leading: 'No Of Stones', trailing: '1'),
                Tiles(leading: 'Weight', trailing: '0.7200'),
                Tiles(leading: 'Cost', trailing: '₹396')
              ],
            )),
      ],
    );
  }
}

class WordExpansionTile1 extends StatefulWidget {
  final String title;

  const WordExpansionTile1({
    super.key,
    required this.title,
  });

  @override
  State<WordExpansionTile1> createState() => _WordExpansionTileState1();
}

class _WordExpansionTileState1 extends State<WordExpansionTile1> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        widget.title,
        style: const TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Constants.appPrimaryColor()),
            child: Column(
              children: const [
                Tiles(leading: 'Gold', trailing: '₹48,131'),
                Tiles(leading: 'Making Charge', trailing: '₹8,471'),
                Tiles(leading: 'Discount', trailing: '₹1694'),
                Tiles(leading: 'Total', trailing: '₹54,908'),
                Tiles(leading: 'GST(3.0%)', trailing: '₹1647'),
                Tiles(leading: 'Grand Total', trailing: '₹56,555'),
              ],
            )),
      ],
    );
  }
}
