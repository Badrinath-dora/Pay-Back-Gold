import 'package:flutter/material.dart';
import 'package:paybackgold_app/components/buttons.dart';
import 'package:paybackgold_app/components/myappbar.dart';
import 'package:paybackgold_app/misc/constants.dart';

class AddingAddress extends StatefulWidget {
  const AddingAddress({Key? key}) : super(key: key);

  @override
  State<AddingAddress> createState() => _AddingAddressState();
}

class _AddingAddressState extends State<AddingAddress> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Variables to store form values
  String firstName = '';
  String lastName = '';
  String doorNumStreetName = '';
  String locality = '';
  String landmark = '';
  String city = '';
  String pincode = '';
  String mobile = '';
  String alternateMobile = '';
  String selectedState = 'Select State';
  String selectedCountry = 'India';
  bool isBillingAddress = false;
  bool isShippingAddress = false;

  // List of Indian states
  final List<String> indianStates = [
    'Select State',
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Myappbar(
        shownavdrawer: false,
      ),
      backgroundColor: Constants.appLightPrimaryColor(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "PLEASE FILL THE DETAILS",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(
                      255, 35, 34, 34), // Customize the text color
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'First Name',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          firstName = value;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Last Name',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          lastName = value;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Door num / Street name',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          doorNumStreetName = value;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Locality',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          locality = value;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Landmark',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          landmark = value;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'City',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          city = value;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Pin code',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          pincode = value;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Mobile',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          mobile = value;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Alternate mobile',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          alternateMobile = value;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    DropdownButtonFormField(
                      value: selectedState,
                      items: indianStates.map((state) {
                        return DropdownMenuItem(
                          value: state,
                          child: Text(state),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedState = value.toString();
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    DropdownButtonFormField(
                      value: selectedCountry,
                      items: ['India'].map((country) {
                        return DropdownMenuItem(
                          value: country,
                          child: Text(country),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedCountry = value.toString();
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Constants.appPrimaryColor(),
                          value: isBillingAddress,
                          onChanged: (value) {
                            setState(() {
                              isBillingAddress = value ?? false;
                            });
                          },
                        ),
                        const Text('Set as default billing'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Constants.appPrimaryColor(),
                          value: isShippingAddress,
                          onChanged: (value) {
                            setState(() {
                              isShippingAddress = value ?? false;
                            });
                          },
                        ),
                        const Text('Set as default shipping'),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        child: Button1(
          text: "SAVE",
          width: 190,
          height: 60,
          onPressed: () {
            // Perform actions when the "SAVE" button is pressed
          },
        ),
      ),
    );
  }
}
