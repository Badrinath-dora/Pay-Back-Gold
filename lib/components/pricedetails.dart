import 'package:flutter/material.dart';
class Pricedetails extends StatefulWidget {
  final double width;
  final double height;
  const Pricedetails({super.key, required this.width, required this.height});
  @override
  State<Pricedetails> createState() => _PricedetailsState();
}
class _PricedetailsState extends State<Pricedetails> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Heading
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'PRICE DETAILS',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 8.0),
            // Horizontal Line
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(height: 8.0),
            // Data Rows
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Total MRP',
                  style: TextStyle(color: Color(0xFF8B0000), fontSize: 15),
                ),
                Text('₹4,997'),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Discount on MRP',
                  style: TextStyle(color: Color(0xFF8B0000), fontSize: 15),
                ),
                Text(
                  '-₹2,799',
                  style: TextStyle(
                    color: Color.fromARGB(255, 8, 145, 90),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Covenience Fee',
                  style: TextStyle(color: Color(0xFF8B0000), fontSize: 15),
                ),
                Text('₹15'),
              ],
            ),
            const SizedBox(height: 8.0),
            // Horizontal Line
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(height: 8.0),
            // One Line of Data
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                // Align the text to the left
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'TOTAL AMOUNT',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '₹2,213',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
