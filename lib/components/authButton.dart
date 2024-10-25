import 'package:coffee_shop/pallete.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) {
          //         return LoginScreen();
          //       },
          //     ),
          //   );
          },
          child: Text(
            'login'.toUpperCase(),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return SignUpScreen();
            //     },
            //   ),
            // ),
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: colorPrimaryLight,
            elevation: 0,
          ),
          child: Text(
            'sign up'.toUpperCase(),
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}