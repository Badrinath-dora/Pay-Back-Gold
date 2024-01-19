import 'package:flutter/material.dart';
import 'package:paybackgold_app/Screens/login_screen.dart';
import 'package:paybackgold_app/Screens/manageadress.dart';
import 'package:paybackgold_app/Screens/productdetails.dart';
import 'package:paybackgold_app/Screens/productscreen.dart';
import 'package:paybackgold_app/Screens/profilesection.dart';
import 'package:paybackgold_app/components/appdrawer.dart';
import 'package:paybackgold_app/components/buttons.dart';
import 'package:paybackgold_app/components/myappbar.dart';
import 'package:paybackgold_app/components/product.dart';
import 'package:paybackgold_app/misc/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.appLightPrimaryColor(),
      appBar: const Myappbar(shownavdrawer: true),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Column(
            children: [
              Row(
                children: [
                  CustomRectangle3(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ProductScreen1(),
                      //   ),
                      // );
                    },
                    height: 180,
                    width: 193,
                    assetImage: 'assets/myorders.png',
                    text1: 'MY ORDERS',
                    elevation: 4.0,
                  ),
                  CustomRectangle3(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ManageAddress(),
                        ),
                      );
                    },
                    height: 180,
                    width: 193,
                    assetImage: 'assets/manageadress.png',
                    text1: 'MANAGE ADDRESS',
                    elevation: 4.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CustomRectangle3(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ProductScreen1(),
                      //   ),
                      // );
                    },
                    height: 180,
                    width: 193,
                    assetImage: 'assets/mysavingscheme.png',
                    text1: 'MY SAVING SCHEME',
                    elevation: 4.0,
                  ),
                  CustomRectangle3(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ProductScreen1(),
                      //   ),
                      // );
                    },
                    height: 180,
                    width: 193,
                    assetImage: 'assets/wishlist.png',
                    text1: 'WISHLIST',
                    elevation: 4.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CustomRectangle3(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profilesection(),
                        ),
                      );
                    },
                    height: 180,
                    width: 193,
                    assetImage: 'assets/profile.png',
                    text1: 'PROFILE',
                    elevation: 4.0,
                  ),
                ],
              ),
              const SizedBox(height: 180),
              Button1(
                text: "LOGOUT",
                width: double.infinity,
                height: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
              ),
            ],
          ),
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
