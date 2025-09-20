import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/constants.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.controller,
    required this.title,
    this.hint,
    this.validateMsg,
    this.validate = false,
    this.validator,
    this.obscureText = false,
    this.icon,
    this.maxLines = 1,
    this.suffixIcon,
    this.keyboardType,
    this.inputAction,
    this.isDense = true,
    this.readOnly = false,
    this.showTitle = true,
    this.onChange,
    this.inputFormatters,
  }) : super(key: key);

  final TextEditingController controller;
  final String title;
  final String? hint;
  final String? validateMsg;
  final bool validate;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final int maxLines;
  final Widget? icon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? inputAction;
  final bool isDense;
  final ValueChanged<String>? onChange;
  final bool readOnly;
  final bool showTitle;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(showTitle) Text(title, style: const TextStyle(fontSize: 15)),
        if(showTitle) const SizedBox(height: 5),
        TextFormField(
          controller: controller,
          cursorColor: K.secondaryColor,
          validator: validate
              ? (validator ?? ((value) => value!.isEmpty ? (validateMsg ?? 'Please Enter $title') : null))
              : null,
          onChanged: onChange,
          obscureText: obscureText,
          keyboardType: keyboardType,
          maxLines: maxLines,
          textInputAction: inputAction,
          inputFormatters: inputFormatters,
          readOnly: readOnly,
          decoration: InputDecoration(
            isDense: isDense,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: K.secondaryColor.withOpacity(0.3)),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            hintText: hint ?? 'Enter ${title.toLowerCase()}',
            filled: true,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w400
            ),
            fillColor: K.fieldBackgroundColor,
            prefixIcon: icon,
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
