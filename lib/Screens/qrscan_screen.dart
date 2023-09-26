import 'package:book_me_today/Screens/qrscancode.dart';

import 'home_screen.dart';
import 'package:flutter/material.dart';
class QRScanScreen extends StatefulWidget {
  static const String id = 'qrscan_screen';

  const QRScanScreen({super.key});

  @override
  State<QRScanScreen> createState() => _QRScanScreenState();
}

class _QRScanScreenState extends State<QRScanScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  const Spacer(),
                  Container(),
                ],
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.20),
              child: Row(
                children: const [
                  Text(
                    'Total Tickets',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '100',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 7.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.20),
              child: Row(
                children: const [
                  Text('Scanned Tickets',
                      style: TextStyle(
                        fontSize: 18.0,
                      )),
                  Spacer(),
                  Text('62',
                      style: TextStyle(
                        fontSize: 18.0,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 7.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.20),
              child: Row(
                children: const [
                  Text('Open Tickets',
                      style: TextStyle(
                        fontSize: 18.0,
                      )),
                  Spacer(),
                  Text('38',
                      style: TextStyle(
                        fontSize: 18.0,
                      ))
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 50.0, horizontal: 80.0),
              child: Material(
                color: const Color(0xFFF0532D),
                borderRadius: BorderRadius.circular(15.0),
                child: Center(
                  child: MaterialButton(
                      minWidth: 10.0,
                      height: 20.0,
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(context, HomeScreen.id);
                        });
                      },
                      child: const Text(
                        'UPDATE',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ),
            ),
            InkWell(
              child:



              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.pushNamed(context,  QRCodeScan.id);

                  });
                },
                child: Container(
                  width: size.height * 0.80,
                  height: size.height * 0.30,
                  decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('images/qrscan.png'))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
