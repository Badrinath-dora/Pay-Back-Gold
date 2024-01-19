import 'package:flutter/material.dart';
import 'package:paybackgold_app/Screens/productscreen.dart';
import 'package:paybackgold_app/components/advertise.dart';
import 'package:paybackgold_app/components/appdrawer.dart';
import 'package:paybackgold_app/components/buttons.dart';
import 'package:paybackgold_app/components/navbar.dart';
// import 'package:paybackgold_app/components/navbar.dart';
import 'package:paybackgold_app/components/product.dart';
import 'package:paybackgold_app/components/texts.dart';
import 'package:paybackgold_app/misc/constants.dart';

import '../components/myappbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      backgroundColor: Constants.appLightPrimaryColor(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: const [
                Button(
                  text: "FREE \nSHIPPING",
                  height: 57,
                  width: 140,
                  icon: Icon(Icons.local_shipping_outlined),
                ),
                SizedBox(
                  width: 1.5,
                ),
                Button(
                  text: "BIS HALLM\nARK",
                  height: 57,
                  width: 140,
                  icon: Icon(Icons.home),
                ),
                SizedBox(
                  width: 1.5,
                ),
                Button(
                  text: "30 DAYS\nRETURN",
                  height: 57,
                  width: 140,
                  icon: Icon(Icons.lock_reset_rounded),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Today's Rate: ",
                  style: TextStyle(
                    color: Constants.appPrimaryColor(),
                    fontSize: 15,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "GOLD 24K/10GMS ₹58886.00",
                  style: TextStyle(
                    color: Constants.appPrimaryColor(),
                    fontSize: 15,
                    fontFamily: 'poppins',
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: const [
                AdvertiseBanner(
                  imageUrl: 'assets/banner1.png',
                ),
                // AdvertiseBanner(
                //   imageUrl: 'assets/banner2.jpg',
                // ),
                // AdvertiseBanner(
                //   imageUrl: 'assets/banner3.jpg',
                // ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text1(
              size: 18,
              text: "GOLD JEWELLERY",
              textcolor: Colors.black,
            ),
            const SizedBox(
              height: 30,
            ),
            GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return CustomRectangle1(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductScreen1()),
                    );
                  },
                  height: 150,
                  width: 150,
                  assetImage: 'assets/product1.png',
                  text1: 'COINS',
                  elevation: 4.0,
                );
              },
            ),
            // const SizedBox(
            //   height: 30,
            // ),
            // const Text1(
            //   size: 18,
            //   text: "SILVER JEWELLERY",
            //   textcolor: Colors.black,
            // ),
            // const SizedBox(
            //   height: 30,
            // ),
            // GridView.builder(
            //   padding: const EdgeInsets.all(8.0),
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //     crossAxisSpacing: 10.0,
            //     mainAxisSpacing: 10.0,
            //   ),
            //   itemCount: 4,
            //   shrinkWrap: true,
            //   physics: const NeverScrollableScrollPhysics(),
            //   itemBuilder: (context, index) {
            //     return CustomRectangle1(
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const ProductScreen1()),
            //         );
            //       },
            //       height: 150,
            //       width: 150,
            //       assetImage: 'assets/product1.png',
            //       text1: 'COINS',
            //       elevation: 4.0,
            //     );
            //   },
            // ),
          ],
        ),
      ),
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
