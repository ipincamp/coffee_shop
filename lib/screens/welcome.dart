import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSize = screenSize.width * 0.25;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/icons/coffee.svg',
              width: imageSize,
              height: imageSize,
            ),
            SizedBox(height: 20),
            SizedBox(
              width: screenSize.width * 0.30,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to login screen
                },
                child: Text('Login'.toUpperCase()),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: screenSize.width * 0.30,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to register screen
                },
                child: Text('Register'.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
