import 'package:firebase_auth/firebase_auth.dart';
import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'package:book_me_today/Screens/registration_screen.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  bool? isChecked = false;
  late String email;
  late String password;
  late String fullName;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  // var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
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
                  'Login to Scan Tickets',
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
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // const Text(
                        //   'Full Name',
                        //   style: TextStyle(
                        //     fontSize: 20.0,
                        //     color: Colors.black,
                        //   ),
                        // ),
                        //
                        // const SizedBox(
                        //   height: 5.0,
                        // ),
                        // TextFormField(
                        //   controller: nameController,
                        //   textAlign: TextAlign.center,
                        //   onChanged: (value) {
                        //     fullName = value;
                        //   },
                        //   decoration: InputDecoration(
                        //       hintText: 'Enter your name',
                        //       contentPadding: const EdgeInsets.symmetric(
                        //           vertical: 2.0, horizontal: 2.0),
                        //       border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(30.0),
                        //       )),
                        //   validator: (value) {
                        //     if (value!.isEmpty) {
                        //       return 'First Enter your email';
                        //     }
                        //
                        //
                        //   },
                        // ),
                        const SizedBox(
                          height: 15.0,
                        ),
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
                          controller: emailController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {
                            email = value;
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter your email',
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 2.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              )),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'First Enter your email';
                            }
                            bool emailValid = RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(email);
                            if (!emailValid) {
                              return 'Enter Valid Email';
                            }
                          },
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
                          controller: passController,
                            textAlign: TextAlign.center,
                            obscureText: true,
                            onChanged: (value) {
                              password = value;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your password',
                       contentPadding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 0.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'First Enter your password';
                              }
                            }
                            ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Transform.scale(
                          scale: 1.2,
                          child: Theme(
                            data: ThemeData(
                                unselectedWidgetColor: Colors.grey[300]),
                            child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              title: const Text(
                                'Remember me',
                              ),
                              value: isChecked,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  isChecked = newValue;
                                });
                              },
                              activeColor: const Color(0xFFF0532D),
                              checkColor: Colors.white,
                            ),
                          ),
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

                                  if(formKey.currentState!.validate()){
                                    print('Success');


                                    setState(() {


                                      showSpinner = true;
                                    });
                                    try {
                                      final newUser =
                                      await _auth.signInWithEmailAndPassword(
                                          email: email, password: password);

                                      if (newUser != null) {
                                        Navigator.pushNamed(
                                            context, HomeScreen.id);
                                      }

                                    } catch (e) {
                                      print(e);
                                    }
                                  }
                                  else {
                                    print('unsucess');
                                  }

                                  setState(() {
                                    nameController.clear();
                                    emailController.clear();
                                    passController.clear();
                                    showSpinner = false;
                                  });


                                },
                                child: const Text(
                                  'LOG IN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ),
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
                                onPressed: () {
                                  setState(() {
                                  emailController.clear();
                                  nameController.clear();
                                  passController.clear();

                                  Navigator.pushNamed(
                                        context, RegistrationScreen.id);
                                  });
                                },
                                child: const Text(
                                  'SIGN UP',
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
                ),
              ]),
            )),
      ),
    ));
  }
}
