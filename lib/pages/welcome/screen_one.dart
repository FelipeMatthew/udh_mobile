import 'package:flutter/material.dart';

class WelcomeScreenOne extends StatelessWidget {
  const WelcomeScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(20, 13, 54, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/pic01.png'),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Welcome to user data hub',
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
