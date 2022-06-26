import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gam3ity/core/constants/locales.dart';
import 'package:gam3ity/generated/l10n.dart';
import 'package:gam3ity/utilities/theme/cubit/theme_cubit.dart';
import 'package:gam3ity/utilities/theme/light_theme/light_colors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => BlocProvider.of<ThemeCubit>(context).locale == englishLocale
          ? BlocProvider.of<ThemeCubit>(context).changeLocale(arabicLocale)
          : BlocProvider.of<ThemeCubit>(context).changeLocale(englishLocale),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 0,
        color: LightColors.cardBG,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.language, color: LightColors.textGray),
              const SizedBox(width: 10),
              Text(
                S.of(context).lang,
                style: const TextStyle(
                  color: LightColors.textGray,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
