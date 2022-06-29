import 'package:country_code_picker/country_code.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gam3ity/core/constants/locales.dart';
import 'package:gam3ity/core/extensions/string.dart';
import 'package:gam3ity/core/domain/validation/phone_number_validator.dart';
import 'package:gam3ity/core/presentation/widgets/country_code_picker_button.dart';
import 'package:gam3ity/generated/l10n.dart';
import 'package:gam3ity/utilities/theme/cubit/theme_cubit.dart';
import 'package:gam3ity/utilities/theme/light_theme/light_colors.dart';

class MobileNumberTextField extends StatefulWidget {
  final TextEditingController editingController;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final TextInputAction textInputAction;
  final String Function(String)? validator;
  final Function(bool)? hasError;
  final bool shouldExtendGenericValidation;
  final CountryCode? countryCode;
  final bool readOnly;
  final String? label;
  final String? hintText;
  final EdgeInsets contentPadding;
  final bool enabled;
  final ValueChanged<CountryCode?>? onCountryChange;
  final void Function(String)? onChanged;
  final bool isFromEditProfile;

  final TextStyle? labelStyle;

  const MobileNumberTextField(
    this.editingController, {
    Key? key,
    this.focusNode,
    this.nextFocusNode,
    this.textInputAction = TextInputAction.done,
    this.validator,
    this.countryCode,
    this.shouldExtendGenericValidation = true,
    this.labelStyle,
    this.readOnly = false,
    this.enabled = true,
    this.isFromEditProfile = false,
    this.label,
    this.hasError,
    this.hintText,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
    this.onCountryChange,
    this.onChanged,
  }) : super(key: key);

  @override
  State<MobileNumberTextField> createState() => _MobileNumberTextFieldState();
}

class _MobileNumberTextFieldState extends State<MobileNumberTextField> {
  bool validPhoneNumber = true;
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    final isLtr = Directionality.of(context) == TextDirection.ltr;
    final local = BlocProvider.of<ThemeCubit>(context).locale;
    final isArLocale = local.languageCode == arabicLocale.languageCode;
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextFormField(
                textDirection: TextDirection.ltr,
                readOnly: widget.readOnly,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: widget.readOnly == true
                    ? null
                    : (val) {
                        var value = val?.toString();
                        if (widget.countryCode?.dialCode == "+20" &&
                            (value?.isNotEmpty ?? false) &&
                            value?[0] == "0") {
                          value = value?.removeIfStartsWith("0");
                        }
                        return textValidator(value!);
                      },
                enabled: widget.enabled,
                controller: widget.editingController,
                textAlign: widget.readOnly
                    ? isLtr
                        ? TextAlign.start
                        : TextAlign.end
                    : TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: Theme.of(context).colorScheme.secondary,
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.deny('١',
                      replacementString: "1"),
                  FilteringTextInputFormatter.deny('٢',
                      replacementString: "2"),
                  FilteringTextInputFormatter.deny('٣',
                      replacementString: "3"),
                  FilteringTextInputFormatter.deny('٤',
                      replacementString: "4"),
                  FilteringTextInputFormatter.deny('٥',
                      replacementString: "5"),
                  FilteringTextInputFormatter.deny('٦',
                      replacementString: "6"),
                  FilteringTextInputFormatter.deny('٧',
                      replacementString: "7"),
                  FilteringTextInputFormatter.deny('٨',
                      replacementString: "8"),
                  FilteringTextInputFormatter.deny('٩',
                      replacementString: "9"),
                  FilteringTextInputFormatter.deny('٠',
                      replacementString: "0"),
                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                ],
                decoration: InputDecoration(
                  // labelText: widget.label,
                  // labelStyle:
                  // widget.labelStyle ?? Theme.of(context).textTheme.bodyText2,
                  errorStyle: !validPhoneNumber
                      ? Theme.of(context).textTheme.caption?.copyWith(
                            color: LightColors.errorColor,
                            locale: local,
                          )
                      : Theme.of(context).textTheme.subtitle1?.copyWith(
                            color: LightColors.errorColor,
                            locale: local,
                          ),
                  hintText: widget.hintText,
                  hintTextDirection: TextDirection.ltr,
                  helperStyle: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: Theme.of(context).primaryColor),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey[300]!, width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  // focusedBorder: const OutlineInputBorder(
                  //   borderSide: BorderSide.none,
                  //   borderRadius: BorderRadius.all(Radius.circular(10)),
                  // ),
                  isDense: true,
                  filled: true,
                  fillColor: const Color(0xffF9F9F9),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor, width: 2),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: LightColors.errorColor,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: LightColors.errorColor,
                    ),
                  ),
                  contentPadding: widget.contentPadding,
                ),
                textInputAction: widget.textInputAction,
                onChanged: (value) async {
                  await validateMobileNumber(value);
                },
                focusNode: widget.focusNode,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.black45,
                    ),
                onEditingComplete:
                    widget.textInputAction == TextInputAction.next
                        ? () => FocusScope.of(context)
                            .requestFocus(widget.nextFocusNode)
                        : null,
              ),
            ),
            const SizedBox(width: 8.0),
            if (!widget.readOnly)
              LayoutBuilder(
                builder: (_, BoxConstraints constrains) => CountryCodePickerButton(
                  onChange: (value) async {
                    widget.onCountryChange?.call(value);
                    widget.editingController.clear();
                  },
                  onInit: (value) => widget.onCountryChange?.call(value),
                ),
              )
            else
              const SizedBox.shrink(),
          ],
        ),
      ],
    );
  }

  Future<void> validateMobileNumber(String value) async {
    if (widget.countryCode != null) {
      validPhoneNumber =
          await '${widget.countryCode!.dialCode}${value.removeIfStartsWith("0")}'
              .isValidPhoneNumber;
    }
  }

  String? textValidator(String val) {
    if (val.isEmpty) {
      return S.of(context).thisFieldIsRequired;
    } else if (!validPhoneNumber) {
      // setState(() {
      //   hasError = true;
      // });
      return S.of(context).mobileNumberValidation;
    } else if (!widget.shouldExtendGenericValidation) {
      // setState(() {
      //   hasError = true;
      // });
      return widget.validator!(val);
    }
    // setState(() {
    //   hasError = false;
    // });
    return null;
  }
}
