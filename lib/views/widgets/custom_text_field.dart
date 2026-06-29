import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/constants.dart';

class customTextField extends StatelessWidget {
  customTextField({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
        hintText: hint,

        hintStyle: const TextStyle(color: kPrimaryColor),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
