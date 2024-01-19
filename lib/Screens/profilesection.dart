import 'package:flutter/material.dart';
import 'package:paybackgold_app/components/inputfield.dart';
import 'package:paybackgold_app/components/myappbar.dart';
import 'package:paybackgold_app/misc/constants.dart';

class Profilesection extends StatefulWidget {
  const Profilesection({super.key});

  @override
  State<Profilesection> createState() => _ProfilesectionState();
}

class _ProfilesectionState extends State<Profilesection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.appLightPrimaryColor(),
      appBar: const Myappbar(shownavdrawer: false),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30.0),
            Container(
              padding: const EdgeInsets.only(left: 19),
              child: const Align(
                alignment: Alignment.topLeft,
                child:  Text(
                  'PERSONAL INFORMATION',
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.only(left: 19, right: 19, top: 19),
              child: const TextField(
                cursorColor: Color(0xFF8B0000),
                // controller: firstNameController,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  labelStyle: TextStyle(
                    color: Colors.grey, // Change the label color here
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Change the underline color here
                      width: 2.0, // Adjust the underline width as needed
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.only(left: 19, right: 19, top: 19),
              child: const TextField(
                cursorColor: Color(0xFF8B0000),
                // controller: lastNameController,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  labelStyle: TextStyle(
                    color: Colors.grey, // Change the label color here
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Change the underline color here
                      width: 2.0, // Adjust the underline width as needed
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.only(left: 19, right: 19, top: 19),
              child: const TextField(
                cursorColor: Color(0xFF8B0000),
                // controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.grey, // Change the label color here
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Change the underline color here
                      width: 2.0, // Adjust the underline width as needed
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.only(left: 19, right: 19, top: 19),
              child: const TextField(
                cursorColor: Color(0xFF8B0000),
                // controller: dobController,
                decoration: InputDecoration(
                  labelText: 'Date of Birth',
                  labelStyle: TextStyle(
                    color: Colors.grey, // Change the label color here
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Change the underline color here
                      width: 2.0, // Adjust the underline width as needed
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.only(left: 19, right: 19, top: 19),
              child: const TextField(
                cursorColor: Color(0xFF8B0000),
                // controller: mobileNumberController,
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  labelStyle: TextStyle(
                    color: Colors.grey, // Change the label color here
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Change the underline color here
                      width: 2.0, // Adjust the underline width as needed
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.only(left: 19, right: 19, top: 19),
              child: const TextField(
                cursorColor: Color(0xFF8B0000),
                // controller: mobileNumberController,
                decoration: InputDecoration(
                  labelText: 'PAN No',
                  labelStyle: TextStyle(
                    color: Colors.grey, // Change the label color here
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Change the underline color here
                      width: 2.0, // Adjust the underline width as needed
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
