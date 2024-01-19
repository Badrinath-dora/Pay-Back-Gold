import 'package:flutter/material.dart';
import 'package:paybackgold_app/Screens/addingaddress.dart';
import 'package:paybackgold_app/components/myappbar.dart';
import 'package:paybackgold_app/misc/constants.dart';

class ManageAddress extends StatefulWidget {
  const ManageAddress({Key? key}) : super(key: key);

  @override
  State<ManageAddress> createState() => _ManageAddressState();
}

class _ManageAddressState extends State<ManageAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.appLightPrimaryColor(),
      appBar: const Myappbar(shownavdrawer: false),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Aligns button to the top
            children: [
              ElevatedButton(
                onPressed: () {
                  // Add your onPressed logic here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddingAddress()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  side: const BorderSide(color: Color(0xFF8B0000)),
                  padding: const EdgeInsets.all(16.0),
                  minimumSize: const Size(double.infinity, 48),
                ),
                child: const Text("ADD ADDRESS"),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 0),
                child: const Text(
                  "DEFAULT SHIPPING ADDRESS",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(
                        255, 35, 34, 34), // Customize the text color
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.white,
                width: 400,
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    children: const [
                      Center(
                        child: Text(
                          'You have no default shipping address in your address book',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 13.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 0),
                child: const Text(
                  "DEFAULT BILLING ADDRESS",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(
                        255, 35, 34, 34), // Customize the text color
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.white,
                width: 400,
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    children: const [
                      Center(
                        child: Text(
                          'You have no default billing address in your address book',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 13.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 0),
                child: const Text(
                  "ADDITIONAL ADDRESS",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(
                        255, 35, 34, 34), // Customize the text color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
