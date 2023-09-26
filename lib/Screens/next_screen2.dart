import '../../Screens/progress_screen.dart';
import '../../Screens/scan_succes_screen.dart';
import '../../Screens/unsucces_screen.dart';
import 'package:flutter/material.dart';

class NextScreen2 extends StatefulWidget {
  static const String id = 'next_screen2';

  const NextScreen2({super.key});

  @override
  State<NextScreen2> createState() => _NextScreen2State();
}

class _NextScreen2State extends State<NextScreen2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: const Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
            const Center(
                child: Text(
              'select the event of your choice',
              style: TextStyle(
                fontSize: 18.0,
              ),
            )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
              child: Container(
                height: size.height * 0.15,
                width: size.width,
                decoration: BoxDecoration(
                  color: const Color(0xFF333133),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  // maxmainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        'FIFA World Cup',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text(
                      'Sports Event March 31,2022',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 25.0,
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.pushNamed(context, ProgressScreen.id);
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 15.0),
                              child: Text(
                                'Scan Now ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 20.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
              child: Container(
                height: size.height * 0.15,
                width: size.width,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0532D),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  // maxmainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        'Live Concert',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text(
                      'Sports Event March 31,2022',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 25.0,
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.pushNamed(context, ScanSuccesScreen.id);
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 15.0),
                              child: Text(
                                'Scan Now ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 20.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
              child: Container(
                height: size.height * 0.15,
                width: size.width,
                decoration: BoxDecoration(
                  color: const Color(0xFF708090),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  // maxmainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        'Anniversary',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text(
                      'Sports Event March 31,2022',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 25.0,
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.pushNamed(context, UnsuccesScreen.id);
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            SizedBox(
                              height: 5.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text(
                                'Scan Now ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 20.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
