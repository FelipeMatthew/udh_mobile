import 'package:flutter/material.dart';

class WelcomeScreenThree extends StatelessWidget {
  const WelcomeScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(20, 13, 54, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/pic02.png'),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Go ahead to see the system',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
