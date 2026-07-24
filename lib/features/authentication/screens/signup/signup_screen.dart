import 'package:evently/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/router/routes_name.dart';
import '../../../../core/utils/assets/app_icons.dart';
import '../../widgets/evently_logo_widget.dart';
import '../../widgets/or_divider.dart';
import '../../widgets/title_auth_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 50),
        child: Column(
          children: [
            const EventlyLogoWidget(),
            const SizedBox(height: 48),
            TitleAuthWidget(title: 'Create your account'),
            const SizedBox(height: 24),
            SignupFormWidget(),
            const SizedBox(height: 52),
            FilledButton(onPressed: () {}, child: Text("Sign up")),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, RouteName.login);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            const OrDivider(),
            const SizedBox(height: 24),
            OutlinedButton(
              onPressed: () {},
              child: Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.google),
                  Text("sign up with Google"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
