import 'package:flutter/material.dart';
import 'next_screen2.dart';

class NextScreen1 extends StatefulWidget {
  static const String id = 'next_screen1';

  @override
  State<NextScreen1> createState() => _NextScreen1State();
}

class _NextScreen1State extends State<NextScreen1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 20.0),
            child: InkWell(
              onTap: (){
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Icon(
                Icons.arrow_back,
              ),
            ),
          ),

          Center(child: Text('select the event of your choice',
            style: TextStyle(
              fontSize: 18.0,

            ),)),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 30.0),
            child: Container(
              height: size.height * 0.25,
              width: size.width ,

              decoration: BoxDecoration(
                color: Color(0xFFF0532D),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column( mainAxisAlignment: MainAxisAlignment.center,

                // maxmainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'FIFA World Cup',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Text(
                    'Sports Event March 31,2022',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,


                    ),
                  ),
         SizedBox(height: 15.0,),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0,),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.pushNamed(context, NextScreen2.id);
                        });
                      },
                      child:
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,

                        children: [

                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text('Scan Now ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          Icon(Icons.arrow_forward,
                            size: 20.0,
                            color: Colors.white,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 30.0),
            child: Container(
              height: size.height * 0.25,
              width: size.width ,

              decoration: BoxDecoration(
                color: Color(0xFF333133),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column( mainAxisAlignment: MainAxisAlignment.center,

                // maxmainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Wedding',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Text(
                    'Sports Event March 31,2022',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,


                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0,),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.pushNamed(context, NextScreen2.id);
                        });
                      },
                      child:
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,

                        children: [

                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text('Scan Now ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          Icon(Icons.arrow_forward,
                            size: 20.0,
                            color: Colors.white,),
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
    );

  }
}
