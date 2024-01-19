import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:paybackgold_app/Screens/login_screen.dart';

import 'package:paybackgold_app/components/inputfield.dart';

import '../components/buttons.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 209, 209),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "REGISTER",
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF8B0000), // Customize the text color
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                // controller: myController, // Provide a TextEditingController
                labelText: 'First Name*', // Customize the label text
                hintText: 'Name*', // Customize the hint text
                icon: Icons.person, // Optionally provide an icon
                obscureText: false,
              ),
              const CustomTextField(
                // controller: myController, // Provide a TextEditingController
                labelText: 'Last Name*', // Customize the label text
                hintText: 'Name', // Customize the hint text
                icon: Icons.person_2, // Optionally provide an icon
                obscureText: false,
              ),
              const CustomTextField(
                // controller: myController, // Provide a TextEditingController
                labelText: 'Email*', // Customize the label text
                hintText: 'Enter Your Email', // Customize the hint text
                icon: Icons.email, // Optionally provide an icon
                obscureText: false,
              ),
              const CustomTextField(
                // controller: myController, // Provide a TextEditingController
                labelText: 'Mobile Number*', // Customize the label text
                hintText: 'Enter Your Mobile Number', // Customize the hint text
                icon: Icons.phone, // Optionally provide an icon
                obscureText: false,
              ),
              const CustomTextField(
                // controller: myController, // Provide a TextEditingController
                labelText: 'Password*', // Customize the label text
                hintText: 'Password', // Customize the hint text
                icon: Icons.lock, // Optionally provide an icon
                obscureText: false,
              ),
              const CustomTextField(
                // controller: myController, // Provide a TextEditingController
                labelText: 'Confirm Password*', // Customize the label text
                hintText: 'Confirm Password', // Customize the hint text
                icon: Icons.lock, // Optionally provide an icon
                obscureText: false,
              ),
              Button1(
                text: "REGISTER",
                width: 190,
                height: 50,
                onPressed: () {},
              ),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    // Add logic to handle "Forget Password" here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text(
                    "Aldready Registerd? LOGIN",
                    style: TextStyle(
                      color: Color(0xFF8B0000), // Customize the text color
                    ),
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
