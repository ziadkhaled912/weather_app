import 'package:country_code_picker/country_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/presentation/widgets/app_snack_bar.dart';
import 'package:weather_app/core/presentation/widgets/button.dart';
import 'package:weather_app/core/presentation/widgets/check_box_field.dart';
import 'package:weather_app/core/presentation/widgets/textfields/email_text_field.dart';
import 'package:weather_app/core/presentation/widgets/textfields/generic_text_field.dart';
import 'package:weather_app/core/presentation/widgets/textfields/mobile_number_text_field.dart';
import 'package:weather_app/di/injection_container.dart';
import 'package:weather_app/features/auth/core/data/models/user_data.dart';
import 'package:weather_app/features/auth/core/persentation/cubit/auth_cubit.dart';
import 'package:weather_app/features/auth/core/persentation/cubit/auth_state.dart';
import 'package:weather_app/generated/l10n.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _nameController = TextEditingController();
  final FocusNode _nameFocus = FocusNode();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordFocus = FocusNode();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final FocusNode _confirmPasswordFocus = FocusNode();
  bool _isSecure = true;
  bool _isConfirmSecure = true;
  bool? _agree;
  final FocusNode _emailFocus = FocusNode();
  final TextEditingController _emailController = TextEditingController();
  late final AuthCubit _cubit;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _cubit = getIt<AuthCubit>();
  }

  @override
  void dispose() {
    super.dispose();
    _confirmPasswordController.dispose();
    _confirmPasswordFocus.dispose();
    _passwordController.dispose();
    _passwordFocus.dispose();
    _nameController.dispose();
    _nameFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            GenericTextField(
              controller: _nameController,
              focusNode: _nameFocus,
              nextFocusNode: _emailFocus,
              labelText: S.of(context).name,
              hint: S.of(context).enterName,
              autoValidation: true,
              contentPadding: const EdgeInsets.all(16),
              type: TextInputType.text,
            ),
            const SizedBox(height: 25),
            EmailTextField(
              _emailController,
              label: S.of(context).email,
              focusNode: _emailFocus,
              nextFocusNode: _passwordFocus,
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
            const SizedBox(height: 40),
            BlocConsumer<AuthCubit, AuthState>(
              bloc: _cubit,
              listener: (context, state) {
                state.maybeWhen(
                  error: (message) => showSnackBar(
                    context: context,
                    snackBarState: SnackBarState.error,
                    text: message,
                  ),
                  success: () {
                    showSnackBar(
                    context: context,
                    snackBarState: SnackBarState.success,
                    text: S.of(context).successfully_logged_in,
                  );
                    context.goNamed("home");
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return CustomButton(
                  label: S.of(context).register,
                  width: MediaQuery.of(context).size.width * 0.55,
                  isLoading: (state is Loading),
                  onPressed: () {
                    _formKey.currentState?.save();
                    if (_formKey.currentState!.validate()) {
                      FocusScope.of(context).requestFocus(FocusNode());
                      _cubit.register(
                        UserData(
                          name: _nameController.text,
                          email: _emailController.text,
                          password: _passwordController.text,
                        ),
                      );
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
