import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class customTextField extends StatelessWidget {
  customTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
    this.onchanged,
  });
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      onChanged: onchanged,
      onSaved: onSaved,
      maxLines: maxLines,
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
