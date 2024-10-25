import 'package:flutter/material.dart';
import 'package:coffee_shop/pallete.dart';

class AccountCheck extends StatelessWidget {
  final bool login;
  final Function? press;

  const AccountCheck({
    super.key,
    this.login = true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account? " : "Already have an Account? ",
          style: const TextStyle(fontSize: 16, color: colorPrimary),
        ),
        GestureDetector(
          onTap: () => press!(),
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(
                fontSize: 16, color: colorPrimary, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
