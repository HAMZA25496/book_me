
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'profile_screen';

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(children: [
      Stack(
        children: [
          Container(
            height: size.height * 0.40,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/profile.png'), fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
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
           Padding(
            padding: EdgeInsets.only(top: size.height * 0.26, left: size.width * 0.10),
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/profileid.png'),
            ),
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            SizedBox(
              width: size.width * 0.70,
              child: const Divider(
                color: Color(0xFFF0532D),
                thickness: 2.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                top: 20.0,
              ),
              child: Column(children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Icon(Icons.person_outline_outlined,
                          color: Color(0xFFF0532D), size: 25.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'James Charles',
                        style: TextStyle(
                          color: Color(0xFFF0532D),
                          fontSize: 16.0,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.email_outlined,
                            color: Color(0xFFF0532D), size: 25.0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Container(

                          width: size.width * 0.60,
                          child: Text(
                                 FirebaseAuth.instance.currentUser!.email.toString()
                                   ,style: TextStyle(
                              color: Color(0xFFF0532D),
                              fontSize: 16.0,
                              overflow: TextOverflow.ellipsis
                            ),

                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: SizedBox(
                width: size.width * 0.70,
                child: const Divider(
                  color: Color(0xFFF0532D),
                  thickness: 2.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, LoginScreen.id);
                  });
                },
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 60.0),
                      child: Icon(
                        Icons.logout_outlined,
                        color: Color(0xFFF0532D),
                        size: 30.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          color: Color(0xFFF0532D),
                          fontSize: 20.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ]));
  }
}
