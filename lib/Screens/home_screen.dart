import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../../Screens/next_screen1.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;
  User? user = FirebaseAuth.instance.currentUser;
   // late FirebaseAuth loggedInUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getCurrentUser();
  }
  void getCurrentUser() {

    if ( user != null){
      print(user?.email);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Icon(
                Icons.arrow_back,
              ),
            ),
          ),
          Center(
              child: Text(
            'select the event of your choice',
            style: TextStyle(
              fontSize: 18.0,
            ),
          )),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
            child: Container(
              height: size.height * 0.60,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xFFF0532D),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                // maxmainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 170.0,
                  ),
                  Text(
                    'FIFA World Cup',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Sports Event March 31,2022',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: size.height *0.15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0, bottom: 15.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, NextScreen1.id);
                        });
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Scan Now ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
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
        ],
      ),
    );
  }
}
