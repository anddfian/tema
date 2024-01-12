import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OutlinedTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String helperText;
  final TextInputType keyboardType;
  final bool obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final int maxLines;

  const OutlinedTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.helperText = "",
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TextInputFormatter>? getInputFormatters() {
      if (keyboardType == TextInputType.number) {
        return [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          FilteringTextInputFormatter.digitsOnly,
        ];
      }
      return null;
    }

    return TextField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        labelStyle: const TextStyle(color: Colors.black),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF186F65), width: 2),
        ),
      ),
      inputFormatters: getInputFormatters(),
      maxLines: maxLines,
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}
