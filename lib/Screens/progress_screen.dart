import 'package:flutter/material.dart';

class ProgressScreen extends StatefulWidget {
  static const String id = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    // animation = Tween(begin: 0.0 ,end: 0.78 ).animate(controller);
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
        setState(() {
          animation = Tween(begin: 0.0, end: 0.78).animate(controller);
        });
      });
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${int.parse((animation.value * 100.0).toStringAsFixed(0))}%",
            style: const TextStyle(
              fontSize: 22.0,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 70.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: LinearProgressIndicator(
                minHeight: 10.0,
                backgroundColor: const Color(0xFFFF967D),
                value: animation.value,
                color: const Color(0xFFF0532D),
                semanticsLabel: 'Linear progress indicator',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Please wait while the ticket is sccaning',
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
