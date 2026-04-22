/// A customizable TextField widget for Flutter.
///
/// Provides flexible styling, validation, and reusable UI.
/// Useful for forms and input fields in Flutter apps.

library custom_textformfield;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A reusable custom text field widget.
///
/// Supports validation, icons, and custom styling.
class CustomTextField extends StatefulWidget {
  /// Controls the text being edited.
  final TextEditingController? controller;
  final String? label;
  final String? labelAbove;
  final bool isObscureText;
  final bool? readOnly;
  final TextInputType? textInputType;
  /// Placeholder text displayed inside the field.
  final String? hintText;
  final TextStyle? hintTextStyle;
  /// Border when the field is enabled.
  final OutlineInputBorder? enabledBorder;
  final Widget? suffixIcon;
  final int? maxlines;
  final int? maxLength; // ✅ ADDED
  final Widget? prefixIcon;
  final Color? fillColor;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final String? errorMessage;
  /// Creates a [CustomTextField].
  ///
  /// [controller] manages the text input.
  /// [hintText] is shown when the field is empty.
  const CustomTextField({
    super.key,
    this.controller,
    this.maxlines,
    this.maxLength,
    this.label,
    this.labelAbove,
    this.readOnly,
    this.textInputType,
    this.isObscureText = false,
    this.hintText,
    this.inputFormatters,
    this.hintTextStyle,
    this.enabledBorder,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.onChanged,
    this.fillColor,
    this.onTap,
    this.errorMessage,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _isShowPassword;

  @override
  void initState() {
    super.initState();
    _isShowPassword = widget.isObscureText;
  }

  void _showHidePasswordIconTapped() {
    setState(() {
      _isShowPassword = !_isShowPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelAbove != null && widget.labelAbove!.isNotEmpty) ...[
          Text(
            widget.labelAbove!,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 6), // spacing between heading and field
        ],
        TextFormField(
          onTap: widget.onTap,
          readOnly: widget.readOnly ?? false,
          obscureText: _isShowPassword,
          onChanged: widget.onChanged,
          validator: widget.validator,
          inputFormatters: widget.inputFormatters,
          controller: widget.controller,
          keyboardType: widget.textInputType,
          maxLines: widget.maxlines ?? 1,
          maxLength: widget.maxLength,

          decoration: InputDecoration(
            counterText: "",
            filled: true,
            fillColor: widget.fillColor ?? Colors.white,

            prefixIcon: widget.prefixIcon,
            suffixIcon: _getSuffixWidget(),

            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: widget.label,
            hintText: widget.hintText,

            hintStyle: widget.hintTextStyle ??
                TextStyle(fontSize: 12),

            labelStyle:
            TextStyle(fontSize: 12),

            enabledBorder: widget.enabledBorder ??
                OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 0.5,
                    color: widget.errorMessage != null
                        ? Colors.red
                        : Colors.grey,
                  ),
                ),

            focusedBorder: OutlineInputBorder(
              borderRadius:
              BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 1,
                color: widget.errorMessage != null
                    ? Colors.red
                    :  Colors.grey,
              ),
            ),

            border: OutlineInputBorder(
              borderRadius:
              BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 0.5,
                color: widget.errorMessage != null
                    ? Colors.red
                    : Colors.grey,
              ),
            ),
          ),
        ),
        if (widget.errorMessage != null && widget.errorMessage!.isNotEmpty) ...[
          const SizedBox(height: 6),
          Row(
            children: [
              Icon(
                Icons.error_outline,
                color: const Color(0xFFE05252),
                size:18,
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  widget.errorMessage!,
                  style:TextStyle(
                    fontSize: 12,
                    color: const Color(0xFFE05252),
                  ),
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }

  Widget? _getSuffixWidget() {
    if (widget.isObscureText) {
      return GestureDetector(
        onTap: _showHidePasswordIconTapped,
        child: Icon(
          _isShowPassword
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
          color: Colors.grey,
        ),
      );
    }
    return widget.suffixIcon;
  }
}