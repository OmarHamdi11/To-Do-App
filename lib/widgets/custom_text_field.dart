import 'package:flutter/material.dart';
import 'package:todoapp/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxLines = 1,
      this.onSaved,
      this.onChange});

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is Required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kInputBarColor,
      decoration: InputDecoration(
        hintText: hint,
        border: buildMethod(),
        enabledBorder: buildMethod(),
        focusedBorder: buildMethod(kInputBarColor),
      ),
    );
  }

  OutlineInputBorder buildMethod([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        width: 50,
        color: color ?? Colors.white,
      ),
    );
  }
}
