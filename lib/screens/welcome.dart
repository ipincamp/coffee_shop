import 'package:coffee_shop/pallete.dart';
import 'package:coffee_shop/tipografy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoffeeShopColors.cream,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Coffee Shop',
                style: CoffeeShopTextStyles.heading,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              SvgPicture.asset(
                'assets/icons/coffee.svg',
                height: 150,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/register');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: CoffeeShopColors.coffeeBrown,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Daftar',
                  style: CoffeeShopTextStyles.button,
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Masuk',
                  style: CoffeeShopTextStyles.subheading.copyWith(
                    color: CoffeeShopColors.coffeeBrown,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
