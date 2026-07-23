import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/assets/app_icons.dart';
import '../../../../core/utils/assets/app_images.dart';
import '../../widgets/login_form_widget.dart';
import '../../widgets/or_divider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.center,
              child: Image.asset(
                AppImages.eventlyLogo,
                width: MediaQuery.of(context).size.width * 0.5,
              ),
            ),
            const SizedBox(height: 48),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'Login to your account',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 24),
            LoginFormWidget(),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 48),
            FilledButton(onPressed: () {}, child: Text("Login")),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "SignUp",
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
                  Text("Login with Google"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
