import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gam3ity/generated/l10n.dart';

class GenericTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final TextInputAction? textInputAction;
  final String? hint;
  final Function(String)? onSubmit;
  final Function(String)? onChange;
  final String? Function(String?)? validation;
  final String? labelText;
  final Widget? prefix;
  final Function()? onTap;
  final Widget? suffix;
  final bool isSecure;
  final bool enabled;
  final Function(String?)? onSaved;
  final FocusNode? focusNode;
  final bool hasBorder;
  final Color? backgroundColor;
  final double borderRadius;
  final EdgeInsets? contentPadding;
  final List<TextInputFormatter>? inputFormatters;
  final bool isOptional;
  final bool autoValidation;
  final int? minLines;
  final int? maxLines;
  final FocusNode? nextFocusNode;

  const GenericTextField({
    Key? key,
    this.controller,
    this.type,
    this.textInputAction,
    this.hint,
    this.onSubmit,
    this.onChange,
    this.validation,
    this.labelText,
    this.prefix,
    this.onTap,
    this.suffix,
    this.isSecure = false,
    this.enabled = true,
    this.onSaved,
    this.focusNode,
    this.hasBorder = true,
    this.backgroundColor,
    this.borderRadius = 10,
    this.contentPadding,
    this.inputFormatters,
    this.isOptional = false,
    this.autoValidation = true,
    this.minLines,
    this.maxLines,
    this.nextFocusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              labelText!,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        TextFormField(
          enabled: enabled,
          focusNode: focusNode,
          textAlignVertical: TextAlignVertical.center,
          controller: controller,
          keyboardType: type,
          onFieldSubmitted: textInputAction == TextInputAction.next
              ? (value) {
                  FocusScope.of(context).nextFocus();
                }
              : onSubmit,
          onChanged: onChange,
          onTap: onTap,
          onSaved: onSaved,
          validator: (val) => textValidator(val, context, validation),
          obscureText: isSecure,
          style: Theme.of(context).textTheme.bodyText2,
          inputFormatters: inputFormatters,
          textInputAction: textInputAction,
          autovalidateMode:
              autoValidation ? AutovalidateMode.onUserInteraction : null,
          minLines: minLines,
          maxLines: isSecure ? 1 : maxLines,
          // onEditingComplete:
          // textInputAction == TextInputAction.next
          //     ? () => FocusScope.of(context)
          //     .requestFocus(nextFocusNode)
          //     : null,
          decoration: InputDecoration(
            filled: backgroundColor != null ? true : false,
            fillColor: const Color(0xffF9F9F9),
            // labelText: labelText,
            hintText: hint,
            contentPadding: contentPadding,
            hintStyle: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Colors.black54),
            suffixIcon: suffix,
            prefixIcon: prefix,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[300]!, width: 2),
              borderRadius: BorderRadius.circular(10)
            ),
            border: hasBorder
                ? OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(borderRadius),
                  )
                : InputBorder.none,
          ),
        ),
      ],
    );
  }

  String? textValidator(
    String? val,
    BuildContext context,
    String? Function(String?)? validator,
  ) {
    if (val != null && val.isEmpty) {
      return S.of(context).thisFieldIsRequired;
    }
    return validator != null ? validator(val) : null;
  }
}
