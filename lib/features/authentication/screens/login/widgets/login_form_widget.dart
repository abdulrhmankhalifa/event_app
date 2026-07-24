import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        CustomTextFormField(
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          labelText: 'Email',
          hintText: "Enter your email",
          prefixIcon: Icon(IconsaxPlusLinear.sms),
        ),
        CustomTextFormField(
          controller: TextEditingController(),
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          isPassword: true,
          labelText: 'Password',
          hintText: "Enter your password",
          prefixIcon: Icon(IconsaxPlusLinear.lock),
        ),
      ],
    );
  }
}
