import 'package:flutter/material.dart';

import '../widgets/auth_header_widget.dart';
import '../widgets/auth_footer_widget.dart';
import '../widgets/signin_form_widget.dart';

class SignInScreen extends StatelessWidget {
  final String _title = 'Sign In';
  final String _description =
      'Sign In terlebih dahulu menggunakan akun Clash Room';

  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AuthHeaderWidget(title: _title, description: _description),
                const SignInFormWidget(),
                const AuthFooterWidget(signin: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
