import 'package:flutter/material.dart';

import '../widgets/auth_header_widget.dart';
import '../widgets/auth_footer_widget.dart';
import '../widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  final String _title = 'Sign Up';
  final String _description =
      'Isi data dengan lengkap untuk mendaftar akun Clash Room';

  const SignUpScreen({super.key});

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
                const SignUpFormWidget(),
                const AuthFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
