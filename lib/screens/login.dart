import 'package:coffee_shop/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: CoffeeShopColors.cream,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please login to continue',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CoffeeShopColors.coffeeBrown,
              ),
            ),
            SizedBox(height: 20),
            SvgPicture.asset(
              'assets/icons/coffee.svg',
              height: 100,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: _isPasswordVisible,
              decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: Icon(
                _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
                },
              ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                /**
                *! ASAP waktu integrasi
                *
                String email = _emailController.text;
                String password = _passwordController.text;
                */
              },
              child: const Text('Login'),
            ),
            SizedBox(height: 12),
            Text('or'.toUpperCase()),
            SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () {
                // ! ASAP waktu integrasi
              },
              icon: SvgPicture.asset(
                'assets/icons/google-plus.svg',
                height: 24,
              ),
              label: Text('Login with Google'),
            ),
          ],
        ),
      ),
    );
  }
}
