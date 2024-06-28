import 'package:flutter/material.dart';

import '../../../../../../core/consts/app_colors.dart';


class AppTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hint;
  final Widget? icon;
  final bool isPass;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final int maxLines;

  const AppTextFormField({
    Key? key,
    this.controller,
    this.hint,
    this.icon,
    this.isPass = false,
    this.validator,
    this.keyboardType,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var border = OutlineInputBorder(
        borderSide: const BorderSide(
            color: AppColors.blue,
            width: 2
        ),
        borderRadius: BorderRadius.circular(1)
    );

    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
          enabledBorder: border.copyWith(
            borderSide: const BorderSide(
                color: AppColors.green,
                width: 2
            ),
          ),
          focusedBorder: border,
          errorBorder: border.copyWith(
            borderSide: const BorderSide(
                color: AppColors.red,
                width: 2
            ),
          ),
          border: border,
          errorMaxLines: 2,
          hintText: widget.hint,
          prefixIcon: widget.icon,
          isDense: true,
          suffixIcon: Visibility(
            visible: widget.isPass,
            child: IconButton(
              icon: Icon(
                  isHidden ? Icons.visibility_off
                      : Icons.visibility
              ),
              onPressed: (){
                setState(() {
                  isHidden = !isHidden;
                });
              },
            ),
          ),
      ),
      obscureText: widget.isPass && isHidden,
      validator: widget.validator,
    );
  }
}
