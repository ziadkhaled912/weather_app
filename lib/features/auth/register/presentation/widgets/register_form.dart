import 'package:country_code_picker/country_code.dart';
import 'package:flutter/material.dart';
import 'package:gam3ity/core/presentation/widgets/button.dart';
import 'package:gam3ity/core/presentation/widgets/check_box_field.dart';
import 'package:gam3ity/core/presentation/widgets/textfields/generic_text_field.dart';
import 'package:gam3ity/core/presentation/widgets/textfields/mobile_number_text_field.dart';
import 'package:gam3ity/generated/l10n.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final FocusNode _nameFocus = FocusNode();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordFocus = FocusNode();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final FocusNode _confirmPasswordFocus = FocusNode();
  CountryCode? _countryCode;
  bool _isSecure = true;
  bool _isConfirmSecure = true;
  bool? _agree;

  @override
  void dispose() {
    super.dispose();
    _confirmPasswordController.dispose();
    _confirmPasswordFocus.dispose();
    _passwordController.dispose();
    _passwordFocus.dispose();
    _nameController.dispose();
    _nameFocus.dispose();
    _mobileController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MobileNumberTextField(
            _mobileController,
            label: S.of(context).enterPhoneNumber,
            textInputAction: TextInputAction.next,
            nextFocusNode: _nameFocus,
            hintText: 'ex.0123456789',
            countryCode: _countryCode,
            onCountryChange: (code) => _countryCode = code,
          ),
          const SizedBox(height: 25),
          GenericTextField(
            controller: _nameController,
            focusNode: _nameFocus,
            nextFocusNode: _passwordFocus,
            labelText: S.of(context).name,
            hint: S.of(context).enterName,
            contentPadding: const EdgeInsets.all(16),
            type: TextInputType.name,
            autoValidation: true,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 25),
          GenericTextField(
            controller: _passwordController,
            focusNode: _passwordFocus,
            nextFocusNode: _confirmPasswordFocus,
            labelText: S.of(context).password,
            hint: S.of(context).enterPassword,
            contentPadding: const EdgeInsets.all(16),
            type: TextInputType.visiblePassword,
            isSecure: _isSecure,
            autoValidation: true,
            textInputAction: TextInputAction.next,
            suffix: IconButton(
              icon: _isSecure
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isSecure = !_isSecure;
                });
              },
            ),
          ),
          const SizedBox(height: 25),
          GenericTextField(
            controller: _confirmPasswordController,
            focusNode: _confirmPasswordFocus,
            labelText: S.of(context).confirmPassword,
            hint: S.of(context).confirmPassword,
            autoValidation: true,
            contentPadding: const EdgeInsets.all(16),
            type: TextInputType.visiblePassword,
            isSecure: _isConfirmSecure,
            suffix: IconButton(
              icon: _isConfirmSecure
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isConfirmSecure = !_isConfirmSecure;
                });
              },
            ),
          ),
          const SizedBox(height: 25),
          CheckboxFormField(
            context: context,
            title: S.of(context).agreeTo,
            onPressed: () {},
            textButton: S.of(context).termsAndConditions,
            haveButton: true,
            onSaved: (value) {
              _agree = value;
            },
          ),
          const SizedBox(height: 40),
          CustomButton(
            label: S.of(context).register,
            width: MediaQuery.of(context).size.width * 0.55,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
