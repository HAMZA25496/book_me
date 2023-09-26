import 'package:flutter/material.dart';

class ScanSuccesScreen extends StatefulWidget {
  static const String id = 'succes_screen';

  const ScanSuccesScreen({super.key});

  @override
  State<ScanSuccesScreen> createState() => _ScanSuccesScreenState();
}

class _ScanSuccesScreenState extends State<ScanSuccesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90.0, vertical: 120.0),
        child: Column(
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('images/succes.png'))),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Scan Unsuccesful',
              style: TextStyle(
                color: Colors.green,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Ticket #123 is  scanned successfully',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
