import 'package:flutter/material.dart';

class WelcomeScreenTwo extends StatelessWidget {
  const WelcomeScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(20, 13, 54, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/pic03.png'),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'a system to manege the clients',
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
