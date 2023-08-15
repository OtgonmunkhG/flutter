import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController editingController;
  final TextInputType textInputType;
  final bool isPassword;
  final hintText;
  const TextInputField(
      {required this.isPassword,
      super.key,
      this.hintText,
      required this.editingController,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.editingController,
      decoration: InputDecoration(
        hintText: "$hintText",
        border:
            OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        focusedBorder:
            OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        enabledBorder:
            OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        filled: true,
        contentPadding: EdgeInsets.all(8),
      ),
      obscureText: this.isPassword,
      keyboardType: textInputType,
    );
  }
}
