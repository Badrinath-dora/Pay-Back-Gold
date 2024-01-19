import 'package:flutter/material.dart';
import 'package:paybackgold_app/Screens/home_screen.dart';
import 'package:paybackgold_app/components/advertisingpopup.dart';
import 'package:paybackgold_app/components/pricedetails.dart';
import 'package:paybackgold_app/components/product.dart';
import 'package:paybackgold_app/components/slider.dart';
import 'package:paybackgold_app/components/tiles.dart';
import 'advertise.dart';
import 'buttons.dart';
import 'icons.dart';
import 'inputfield.dart';

void main() {
  runApp(const Allcomponents());
}

class Allcomponents extends StatelessWidget {
  const Allcomponents({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 252, 235, 240),
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(
              height: 40,
            ),
            Button1(
              text: "BUY NOW", width: 190, height: 60,
              onPressed: () {},
              // icon: Icon(Icons.local_shipping_sharp, color: Colors.white),
            ),
            const SizedBox(
              height: 50,
            ),
            const Button(
              text: "FREE \nSHIPPING",
              height: 60,
              width: 150, icon: Icon(Icons.local_shipping_outlined),
              // icon: Icon(Icons.abc_outlined),
            ),
            const SizedBox(
              height: 10,
            ),
            const Menubar1(
              icon: Icon(
                Icons.menu_open,
                color: Color(0xFF8B0000),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            const Menubar1(
              icon: Icon(
                Icons.search_outlined,
                color: Color(0xFF8B0000),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            const Menubar1(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Color(0xFF8B0000),
              ),
            ),
            const CustomRectangle(
              height: 200.0,
              width: 140.0,
              // color: Colors.white,
              borderWidth: 2.0,
              assetImage: 'assets/product1.png',
              text1: 'Gold Coins',
              size: 100, text2: "₹49,000", elevation: 4,
              // Adjust the border width as needed
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomRectangle1(
              onPressed: null,
              height: 200,
              width: 200,
              // borderWidth: 1,
              assetImage: 'assets/product1.png',
              text1: 'Coins',
              elevation: 4.0,
            ),
            const SizedBox(
              height: 20,
            ),
            const AdvertiseBanner(
              imageUrl: 'assets/banner1.jpg',
            ),
            const AdvertiseBanner(
              imageUrl: 'assets/banner2.jpg',
            ),
            const AdvertiseBanner(
              imageUrl: 'assets/banner3.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            const WordExpansionTile(title: 'STONE DETAILS'),
            const SizedBox(
              height: 50,
            ),
            const CustomRectangle2(
              assetImage: 'assets/product1.png',
              elevation: 4.0,
              height: 200,
              text1: '₹50,000',
              width: 160,
              text2: '3%OFF',
              onPressed: null,
            ),
            const SizedBox(
              height: 50,
            ),
            const GrtImageSlider(),
            const SizedBox(
              height: 50,
            ),
            const CustomTextField(
              // controller: myController, // Provide a TextEditingController
              labelText: 'Email', // Customize the label text
              hintText: 'Enter your email', // Customize the hint text
              icon: Icons.email, // Optionally provide an icon
              obscureText: false,
            ),
            const SizedBox(
              height: 40,
            ),
            const Advertisingpopup(),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                // Show the popup when the button is clicked.
                showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Stack(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  // Container to hold the "ABC" icon
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); // Close the popup
                                    },
                                    icon: Icon(Icons.close),
                                  ),
                                ),
                              ),
                              // const SizedBox(
                              //   height: 20,
                              // ),
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
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen()),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      actions: [],
                    );
                  },
                );
              },
              child: Text('Open Popup'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Pricedetails(
              height: 215,
              width: double.infinity,
            ),
            const SizedBox(
              height: 50,
            )
          ]),
        ));
  }
}
