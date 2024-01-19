import 'package:flutter/material.dart';
import 'package:paybackgold_app/Screens/productdetails.dart';
import 'package:paybackgold_app/components/appdrawer.dart';
import 'package:paybackgold_app/components/buttons.dart';
import 'package:paybackgold_app/components/navbar.dart';
// import 'package:paybackgold_app/components/navbar.dart';
import 'package:paybackgold_app/components/product.dart';
import 'package:paybackgold_app/misc/constants.dart';

import '../components/myappbar.dart';

class ProductScreen1 extends StatefulWidget {
  const ProductScreen1({super.key});

  @override
  State<ProductScreen1> createState() => _ProductScreen1State();
}

class _ProductScreen1State extends State<ProductScreen1> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: MyNavigationBar(),
      drawer: AppDrawer(),
      appBar: const Myappbar(shownavdrawer: true), // Add Myappbar to the AppBar

      body: Column(children: [
        Row(
          children: const [
            Button(
              text: "FILTER",
              height: 57,
              width: 140,
              icon: Icon(Icons.filter_alt),
            ),
            SizedBox(
              width: 1.5,
            ),
            Button(
              text: "SORT",
              height: 57,
              width: 140,
              icon: Icon(Icons.sort),
            ),
            SizedBox(
              width: 1.5,
            ),
            Button(
              text: "VIEW",
              height: 57,
              width: 140,
              icon: Icon(Icons.view_agenda),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "COINS ",
                style: TextStyle(
                  color: Constants.appPrimaryColor(),
                  fontSize: 15,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "12 Products Found",
                style: TextStyle(
                  color: Constants.appPrimaryColor(),
                  fontSize: 15,
                  fontFamily: 'poppins',
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: 12,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              return CustomRectangle2(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductDetails()),
                  );
                },
                assetImage: 'assets/product1.png',
                elevation: 4.0,
                height: 200,
                text1: '₹50,000',
                width: 160,
                text2: '3%OFF',
              );
            },
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFF8B0000),
            ),
            label: '', // No label text
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(0xFF8B0000),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Color(0xFF8B0000),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xFF8B0000),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
