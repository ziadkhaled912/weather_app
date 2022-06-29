import 'package:flutter/material.dart';
import 'package:gam3ity/features/auth/register/presentation/widgets/register_form.dart';
import 'package:gam3ity/features/on_boarding/presentation/widgets/custom_scaffold.dart';
import 'package:gam3ity/generated/l10n.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: S.of(context).register,
      child: const RegisterForm(),
    );
  }
}
