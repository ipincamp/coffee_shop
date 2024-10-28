import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:coffee_shop/pallete.dart';
import 'package:coffee_shop/screens/login.dart';

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
            const Text(
              'Coffee Shop',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CoffeeShopColors.coffeeBrown,
              ),
            ),
            SizedBox(height: 20),
            SvgPicture.asset(
              'assets/icons/coffee.svg',
              width: imageSize,
              height: imageSize,
            ),
            SizedBox(height: 20),
            SizedBox(
              width: screenSize.width * 0.48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Text('Login'.toUpperCase()),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: screenSize.width * 0.48,
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
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'Designed by ',
            style: TextStyle(
              color: CoffeeShopColors.ashGrey,
              fontSize: 10,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'ipincamp',
                style: TextStyle(
                  color: CoffeeShopColors.darkChocolate,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
