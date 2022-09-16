import 'package:flutter/material.dart';
import 'package:weather_app/core/domain/validation/email_validator.dart';
import 'package:weather_app/generated/l10n.dart';

class EmailTextField extends StatefulWidget {
  final TextEditingController editingController;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final TextInputAction textInputAction;

  ///this style is passed when the style of label is bold in some forms ex: set company form
  final TextStyle? labelStyle;
  final EdgeInsets contentPadding;
  final String? hintText;
  final String? label;
  final void Function(String)? onChanged;
  final bool readOnly;
  const EmailTextField(
    this.editingController, {
    this.focusNode,
    this.onChanged,
    this.nextFocusNode,
    this.labelStyle,
    this.textInputAction = TextInputAction.next,
    this.label,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
    this.hintText, this.readOnly = false,
  });

  @override
  _EmailTextFieldState createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              widget.label!,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        TextFormField(
          readOnly: widget.readOnly,
          validator: (val) => emailValidator(val!, context),
          controller: widget.editingController,
          keyboardType: TextInputType.emailAddress,
          cursorColor: Theme.of(context).colorScheme.secondary,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Colors.black45,
              ),
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            errorStyle: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Theme.of(context).colorScheme.error),
            filled: true,
            fillColor: const Color(0xffF9F9F9),
            // labelText: labelText,
            hintText: widget.hintText,
            contentPadding: widget.contentPadding,
            hintStyle: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Colors.black54),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[300]!, width: 2),
                borderRadius: BorderRadius.circular(10)
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            isDense: true,
          ),
          textInputAction: widget.textInputAction,
          onChanged: widget.onChanged,
          focusNode: widget.focusNode,
          onEditingComplete: widget.textInputAction == TextInputAction.next
              ? () => FocusScope.of(context).requestFocus(widget.nextFocusNode)
              : null,
        ),
      ],
    );
  }

  String? emailValidator(String val, BuildContext context) {
    if (val.isEmpty) {
      return S.of(context).thisFieldIsRequired;
    } else if (!val.isValidEmail()) {
      return S.of(context).emailValidation;
    }
    return null;
  }
}
