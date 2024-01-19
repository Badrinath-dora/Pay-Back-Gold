import 'package:flutter/material.dart';
import 'package:paybackgold_app/Screens/addingaddress.dart';
import 'package:paybackgold_app/Screens/cartpage.dart';
import 'package:paybackgold_app/Screens/home_screen.dart';
import 'package:paybackgold_app/Screens/login_screen.dart';
import 'package:paybackgold_app/Screens/manageadress.dart';
import 'package:paybackgold_app/Screens/mysavingschemes.dart';
import 'package:paybackgold_app/Screens/productdetails.dart';
import 'package:paybackgold_app/Screens/productscreen.dart';
import 'package:paybackgold_app/Screens/profilescreen.dart';
import 'package:paybackgold_app/Screens/profilesection.dart';
import 'package:paybackgold_app/Screens/registration_screen.dart';
import 'package:paybackgold_app/Screens/splashscreen.dart';
import 'package:paybackgold_app/components/allcomponents.dart';
// ignore: unused_import
import 'package:paybackgold_app/components/pricedetails.dart';

void main() {
  runApp(const ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splashscreen',
      routes: {
        'login': (context) => const LoginScreen(),
        'register': (context) => const RegistrationScreen(),
        'homescreen': (context) => const HomeScreen(),
        'allcomponents': (context) => const Allcomponents(),
        'splashscreen': (context) => SplashScreen(),
        'productscreen': (context) => const ProductScreen1(),
        'productdetails': (context) => const ProductDetails(),
        'cartpage': (context) => CartPage(),
        'profilescreen': (context) => const ProfileScreen(),
        'Profilesection': (context) => const Profilesection(),
        'Manageadress': (context) => const ManageAddress(),
        'AddingAddress': (context) => const AddingAddress(),
        'Savingschemes': (context) => const Savingschemes(),
      },
      // home: SplashScreen(),
    );
  }
}
