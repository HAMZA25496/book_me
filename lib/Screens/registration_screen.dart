import 'package:book_me_today/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;

  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return MaterialApp(

        home: Scaffold(
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

          body: ModalProgressHUD(
            inAsyncCall: showSpinner,
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 100.0),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Center(
                      child: SingleChildScrollView(
                        child: Container(
                          height: 74.0,
                          width: 280.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/bookme.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'SIGN UP to Scan Tickets',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value){
                              email=value;
                            },
                            decoration: InputDecoration(
                                hintText: 'Enter your password',
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 15.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                )),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          TextFormField(

                            textAlign: TextAlign.center,
                            // obscureText: true,
                            onChanged: (value){
                              password =value;

                            },
                            decoration: InputDecoration(
                                hintText: 'Enter your password',
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 15.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                )),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),

                          const SizedBox(
                            height: 20.0,
                          ),
                          Material(
                            color: const Color(0xFFF0532D),
                            borderRadius: BorderRadius.circular(30.0),
                            child: Center(
                              child: MaterialButton(
                                  minWidth: 350.0,
                                  height: 50.0,
                                  onPressed: () async {
                                    setState(() {
                                      showSpinner = true;
                                    });

                                    try {
                                      final newUser = await _auth
                                          .createUserWithEmailAndPassword(
                                          email: email, password: password);
                                      if(newUser != null){

                                        Navigator.pushNamed(context, LoginScreen.id);
                                      }
                                      setState(() {
                                        showSpinner = false;
                                      });

                                    }
                                    catch(e){
                                      print(e);

                                    }
                                    },
                                  child: const Text(
                                    'SIGN UP',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                )),
          ),
        ));
  }
}
