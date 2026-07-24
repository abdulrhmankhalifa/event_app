import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';

class SignupFormWidget extends StatefulWidget {
  const SignupFormWidget({super.key});

  @override
  State<SignupFormWidget> createState() => _SignupFormWidgetState();
}

class _SignupFormWidgetState extends State<SignupFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        CustomTextFormField(
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          labelText: 'Enter your name',
          hintText: "Enter your name",
          prefixIcon: Icon(IconsaxPlusLinear.user),
        ),
        CustomTextFormField(
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          labelText: 'Enter your email',
          hintText: "Enter your email",
          prefixIcon: Icon(IconsaxPlusLinear.sms),
        ),
        CustomTextFormField(
          controller: TextEditingController(),
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          isPassword: true,
          labelText: 'Enter your password',
          hintText: "Enter your password",
          prefixIcon: Icon(IconsaxPlusLinear.lock),
        ),
        CustomTextFormField(
          controller: TextEditingController(),
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          isPassword: true,
          labelText: 'Confirm your password',
          hintText: "Confirm your password",
          prefixIcon: Icon(IconsaxPlusLinear.lock),
        ),
      ],
    );
  }
}
