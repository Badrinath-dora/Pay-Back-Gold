import 'package:flutter/material.dart';
import 'package:paybackgold_app/Screens/home_screen.dart';
import 'package:paybackgold_app/Screens/poupscreen.dart';
import 'package:paybackgold_app/Screens/registration_screen.dart';
import 'package:paybackgold_app/components/buttons.dart';
import 'package:paybackgold_app/components/inputfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState(); 
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 209, 209),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/pbgcoin.png', // Replace with the path to your logo image
                width: 200, // Adjust the width as needed
                height: 200, // Adjust the height as needed
              ),
              const SizedBox(height: 40),
              // Add spacing between the logo and other elements
              const CustomTextField(
                // controller: myController, // Provide a TextEditingController
                labelText: 'Email', // Customize the label text
                hintText: 'Enter your email', // Customize the hint text
                icon: Icons.email, // Optionally provide an icon
                obscureText: false,
              ),
              const CustomTextField(
                // controller: myController, // Provide a TextEditingController
                labelText: 'Password', // Customize the label text
                hintText: 'Enter Password', // Customize the hint text
                icon: Icons.lock, // Optionally provide an icon
                obscureText: true, // Set to true for password input
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 220,
                ),
                child: TextButton(
                  onPressed: () {
                    // Add logic to handle "Forget Password" here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResetLinkPopup(
                                message:
                                    'Reset Link has been Sucessfully sent to your registerd Email',
                              )),
                    );
                  },
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Color(0xFF8B0000), // Customize the text color
                    ),
                  ),
                ),
              ),

              Button1(
                text: "LOGIN",
                width: 190,
                height: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
              ),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    // Add logic to handle "Forget Password" here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationScreen()),
                    );
                  },
                  child: const Text(
                    "Don't have an acoount? REGISTER",
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
