import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:udh_mobile/pages/login.dart';
import 'package:udh_mobile/pages/welcome/screen_one.dart';
import 'package:udh_mobile/pages/welcome/screen_two.dart';
import 'package:udh_mobile/pages/welcome/screen_three.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: const [
              WelcomeScreenOne(),
              WelcomeScreenTwo(),
              WelcomeScreenThree(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.90),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: const WormEffect(
                dotColor: Colors.white,
                activeDotColor: Colors.deepPurple,
                dotHeight: 12.0,
                dotWidth: 12.0,
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                if (_pageController.hasClients &&
                    _pageController.page!.round() == 2) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                } else {
                  _pageController.jumpToPage(2); // Pular para a última página
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 21, 20, 27),
                foregroundColor: Colors.white, // Cor do texto
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20), // Bordas arredondadas
                ),
                elevation: 5, // Sombra do botão
              ),
              child: const Text(
                "Pular",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
