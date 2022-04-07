import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';

class TextInputFieldWidget extends StatelessWidget {
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final TextInputAction inputAction;
  final TextInputType inputType;
  final FocusNode focusNode;
  final TextEditingController controller;
  final String Function(String?)? onFieldSubmitted;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLines;
  bool enabled;
  final Color? hintTextColor;
  double width;
  TextAlign textAlign;
  final bool enableBorders;
  final bool filled;
  final Color fillColor;
  final TextStyle? inputTextStyle;
  final Color cursorColor;
  final Function? onChanged;
  final AutovalidateMode autoValidateMode;
  final List<TextInputFormatter> inputFormatters;
  final bool autocorrect;
  final TextCapitalization textCapitalization;
  Color? borderColor;
  double? borderRadius;
  final bool readOnly;

  TextInputFieldWidget({
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    required this.inputAction,
    required this.inputType,
    required this.focusNode,
    required this.controller,
    required this.onFieldSubmitted,
    this.enabled = true,
    this.hintTextColor,
    this.width = 150,
    this.textAlign = TextAlign.left,
    this.contentPadding,
    this.maxLines = 1,
    this.enableBorders = true,
    this.filled = true,
    this.fillColor = Colors.white,
    this.inputTextStyle,
    this.cursorColor = Colors.white,
    this.onChanged,
    this.autoValidateMode = AutovalidateMode.disabled,
    this.inputFormatters = const [],
    this.autocorrect = false,
    this.textCapitalization = TextCapitalization.none,
    this.borderColor,
    this.borderRadius,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      onChanged: (e) => onChanged != null ? onChanged!(e) : null,
      cursorColor: cursorColor,
      style: inputTextStyle ??
          TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimaryColor,
          ),
      maxLines: maxLines,
      enabled: enabled,
      validator: validator,
      textInputAction: inputAction,
      textAlign: textAlign,
      textCapitalization: textCapitalization,
      autocorrect: autocorrect,
      keyboardType: inputType,
      focusNode: focusNode,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
      autovalidateMode: autoValidateMode,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: filled,
        fillColor: fillColor,
        isDense: true,
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        hintText: hintText,
        errorStyle: const TextStyle(fontSize: 12),
        hintStyle: TextStyle(
          color: hintTextColor ?? AppColors.textSecondaryColor,
          fontSize: 13.0,
          fontWeight: enabled ? FontWeight.normal : FontWeight.w500,
          fontFamily: 'Poppins',
        ),
        border: enableBorders == false
            ? InputBorder.none
            : OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius ?? 100),
                ),
                borderSide: BorderSide(
                    width: 3,
                    color:
                        borderColor ?? AppColors.dividerColor ?? Colors.black),
              ),
      ),
    );
  }
}
