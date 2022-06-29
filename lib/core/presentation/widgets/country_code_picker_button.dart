import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CountryCodePickerButton extends StatelessWidget {
  const CountryCodePickerButton({
    Key? key,
    required this.onChange,
    required this.onInit,
    this.initSelection,
  }) : super(key: key);

  final Function(CountryCode) onChange;
  final Function(CountryCode?) onInit;
  final String? initSelection;

  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      backgroundColor: Colors.white,
      enabled: true,
      initialSelection: initSelection ?? 'Eg',
      padding: EdgeInsets.zero,
      flagWidth: 25,
      showDropDownButton: true,
      boxDecoration: const BoxDecoration(
        color: Colors.white,
      ),
      flagDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      showFlagMain: true,
      onChanged: onChange,
      onInit: onInit,
      textStyle: Theme.of(context)
          .textTheme
          .subtitle2
          ?.copyWith(fontWeight: FontWeight.w600),
      favorite: const ['+20'],
      builder: (code) => Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color:  const Color(0xffF9F9F9),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Theme.of(context).primaryColor,
              width: 2
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 13.5,
          ),
          child: Row(
            children: [
              Text(
                code?.dialCode ?? '',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(width: 5),
              Image.asset(
                code!.flagUri!,
                package: 'country_code_picker',
                width: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
