import 'package:flutter/material.dart';

class AuthFooterWidget extends StatelessWidget {
  final bool signin;

  const AuthFooterWidget({super.key, this.signin = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                child: const Image(
                    image: AssetImage('assets/images/google.png'), width: 20.0),
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: OutlinedButton(
                child: const Image(
                    image: AssetImage('assets/images/facebook.png'),
                    width: 20.0),
                onPressed: () {},
              ),
            )
          ],
        ),
        const SizedBox(height: 15),
        signin
            ? TextButton(
                onPressed: () {},
                child: const Text.rich(
                  TextSpan(
                      text: 'Don\'t have an Account? ',
                      style: TextStyle(),
                      children: [
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(color: Colors.blue))
                      ]),
                ),
              )
            : Container(),
      ],
    );
  }
}
