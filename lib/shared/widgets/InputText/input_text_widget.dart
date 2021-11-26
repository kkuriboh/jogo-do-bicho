import 'package:flutter/material.dart';
import 'package:jogo_do_bicho/shared/themes/app_colors.dart';

class InputTextWidget extends StatelessWidget {
  final String label;
  final bool? password;
  const InputTextWidget({Key? key, required this.label, this.password = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:
          password == true ? TextInputType.visiblePassword : TextInputType.name,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 2),
        labelText: label,
        labelStyle: const TextStyle(
          color: AppColors.foreground,
          fontWeight: FontWeight.w300,
          fontSize: 14,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.foreground),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.foreground),
        ),
      ),
      style: const TextStyle(
        color: AppColors.foreground,
        fontWeight: FontWeight.w300,
        fontSize: 14,
      ),
    );
  }
}
