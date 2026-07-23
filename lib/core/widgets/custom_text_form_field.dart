import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class CustomTextFormField extends StatefulWidget {
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String hintText;
  final String? labelText;
  final Icon? suffixIcon;
  final Icon? prefixIcon;
  final bool isPassword;

  const CustomTextFormField({
    super.key,
    this.validator,
    required this.controller,
    required this.keyboardType,
    required this.textInputAction,
    required this.hintText,
    this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    this.isPassword = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isShowPassword = widget.isPassword;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: true,
      enableSuggestions: true,
      controller: widget.controller,
      cursorRadius: Radius.circular(16),
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      style: Theme.of(context).textTheme.bodyLarge,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        suffixIcon: !widget.isPassword
            ? widget.suffixIcon
            : IconButton(
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                icon: Icon(
                  isShowPassword
                      ? IconsaxPlusLinear.eye_slash
                      : IconsaxPlusLinear.eye,
                ),
              ),
        prefixIcon: widget.prefixIcon,
      ),
      obscureText: isShowPassword,
    );
  }
}
