import 'package:flutter/material.dart';

import '../Screens/home_screen.dart';
import '../Screens/profile_screen.dart';
import '../Screens/qrscan_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final pages = [
    HomeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_currentIndex],
        floatingActionButton: SizedBox(
          height: 65.0,
          width: 65.0,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: const Color(0xFFF0532D),
                onPressed: () {
                Navigator.pushNamed(context, QRScanScreen.id);

                },
                child: const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Image(
                    image: AssetImage('images/scan.png'),
                  ),
                )
                // elevation: 5.0,
                ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: SizedBox(
          height: 50.0,
          child: BottomAppBar(
            color: const Color(0xFF333133),

              // elevation: 20.0,

              shape: const CircularNotchedRectangle(),
              child: SizedBox(
                height: 75,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    IconButton(
                      iconSize: 30.0,
                      padding: const EdgeInsets.only(left: 28.0),
                      icon: const Icon(Icons.home_outlined),
                      onPressed: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                    ),
                    IconButton(
                      iconSize: 30.0,
                      padding: const EdgeInsets.only(right: 28.0),
                      icon: const Icon(Icons.person_outline_outlined),
                      onPressed: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                    ),
                  ],
                ),
              )),
        ));
  }
}
