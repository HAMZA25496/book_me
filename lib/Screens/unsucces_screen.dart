import 'package:flutter/material.dart';

import 'home_screen.dart';

class UnsuccesScreen extends StatefulWidget {
  static const String id = 'unsucces_screen';

  const UnsuccesScreen({super.key});

  @override
  State<UnsuccesScreen> createState() => _UnsuccesScreenState();
}

class _UnsuccesScreenState extends State<UnsuccesScreen> {
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
                  image: DecorationImage(
                      image: AssetImage('images/unsucces.png'))),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Scan Succesful',
              style: TextStyle(
                color: Colors.red,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Ticket #123 is already scanned',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Material(
              color: const Color(0xFFF0532D),
              borderRadius: BorderRadius.circular(10.0),
              child: Center(
                child: MaterialButton(
                    minWidth: 350.0,
                    height: 30.0,
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, HomeScreen.id);
                      });
                    },
                    child: const Text(
                      'OK - GO BACK',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
