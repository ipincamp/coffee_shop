import 'package:coffee_shop/pallete.dart';
import 'package:coffee_shop/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: CoffeeShopColors.coffeeBrown,
        scaffoldBackgroundColor: CoffeeShopColors.cream,
        fontFamily: 'Merriweather',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: CoffeeShopColors.cream,
            backgroundColor: CoffeeShopColors.coffeeBrown,
            shape: const StadiumBorder(),
            maximumSize: const Size(double.infinity, 42),
            minimumSize: const Size(double.infinity, 42),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: CoffeeShopColors.cream,
            iconColor: CoffeeShopColors.coffeeBrown,
            prefixIconColor: CoffeeShopColors.coffeeBrown,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none,
            )),
      ),
      home: const WelcomeScreen(),
    );
  }
}
