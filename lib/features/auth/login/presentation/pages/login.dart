import 'package:flutter/material.dart';
import 'package:gam3ity/features/auth/login/presentation/widgets/login_form.dart';
import 'package:gam3ity/features/on_boarding/presentation/widgets/custom_scaffold.dart';
import 'package:gam3ity/generated/l10n.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: S.of(context).login,
      leading: const BackButton(),
      child: const LoginForm(),
    );
  }
}
