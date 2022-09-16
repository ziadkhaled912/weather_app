import 'package:country_code_picker/country_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/presentation/widgets/app_snack_bar.dart';
import 'package:weather_app/core/presentation/widgets/button.dart';
import 'package:weather_app/core/presentation/widgets/textfields/email_text_field.dart';
import 'package:weather_app/core/presentation/widgets/textfields/generic_text_field.dart';
import 'package:weather_app/core/presentation/widgets/textfields/mobile_number_text_field.dart';
import 'package:weather_app/di/injection_container.dart';
import 'package:weather_app/features/auth/core/persentation/cubit/auth_cubit.dart';
import 'package:weather_app/features/auth/core/persentation/cubit/auth_state.dart';
import 'package:weather_app/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final _formKey = GlobalKey<FormState>();
  late final AuthCubit _cubit;
  bool _isSecure = true;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<AuthCubit>();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordFocus.dispose();
    _emailFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
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
              labelText: S.of(context).password,
              hint: S.of(context).enterPassword,
              contentPadding: const EdgeInsets.all(16),
              type: TextInputType.visiblePassword,
              isSecure: _isSecure,
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
            const SizedBox(height: 60),
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
                  label: S.of(context).login,
                  width: MediaQuery.of(context).size.width * 0.55,
                  isLoading: (state is Loading),
                  onPressed: () {
                    _formKey.currentState?.save();
                    if (_formKey.currentState!.validate()) {
                      FocusScope.of(context).requestFocus(FocusNode());
                      _cubit.login(
                          _emailController.text, _passwordController.text);
                    }
                  },
                );
              },
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(S.of(context).dontHaveAccount),
                TextButton(
                  onPressed: () => context.pushNamed('register'),
                  child: Text(
                    S.of(context).register,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
