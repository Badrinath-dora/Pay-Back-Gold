import 'package:flutter/material.dart';
import 'package:paybackgold_app/components/myappbar.dart';
import 'package:paybackgold_app/misc/constants.dart';

class Savingschemes extends StatefulWidget {
  const Savingschemes({Key? key}) : super(key: key);

  @override
  State<Savingschemes> createState() => _SavingschemesState();
}

class _SavingschemesState extends State<Savingschemes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.appLightPrimaryColor(),
      appBar: const Myappbar(shownavdrawer: false),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            MyExpansionTile(
              title: 'SCHEME A',
              amountPaid: 'Paid amount : 1000/-',
              additionalData: [
                'First Name: John',
                'Last Name: Doe',
                'Mobile Number: 1234567890',
                'Pan Card: ABCDE1234F',
                'DOB: 01/01/1990',
              ],
            ),
            MyExpansionTile(
              title: 'SCHEME B',
              amountPaid: 'Paid amount : 1500/-',
              additionalData: [
                'First Name: Jane',
                'Last Name: Smith',
                'Mobile Number: 9876543210',
                'Pan Card: XYZWV5678K',
                'DOB: 02/15/1985',
              ],
            ),
            MyExpansionTile(
              title: 'SCHEME C',
              amountPaid: 'Paid amount : 2000/-',
              additionalData: [
                'First Name: Bob',
                'Last Name: Johnson',
                'Mobile Number: 5555555555',
                'Pan Card: PQRST6789G',
                'DOB: 05/20/1975',
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyExpansionTile extends StatelessWidget {
  final String title;
  final String amountPaid;
  final List<String> additionalData;

  const MyExpansionTile({
    required this.title,
    required this.amountPaid,
    required this.additionalData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(10.0),
      child: ExpansionTile(
        iconColor: Colors.blue,
        tilePadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          amountPaid,
          style: const TextStyle(fontSize: 18, color: Color(0xFF8B0000)),
        ),
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: additionalData
                  .map(
                    (data) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          data.split(': ')[0] + ":",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          data.split(': ')[1],
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
              .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
