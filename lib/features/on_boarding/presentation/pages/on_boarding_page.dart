import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gam3ity/core/constants/locales.dart';
import 'package:gam3ity/utilities/theme/cubit/theme_cubit.dart';
import 'package:gam3ity/utilities/theme/light_theme/light_colors.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          children: [
            InkWell(
              onTap: () =>
                  BlocProvider.of<ThemeCubit>(context).locale == englishLocale
                      ? BlocProvider.of<ThemeCubit>(context)
                          .changeLocale(arabicLocale)
                      : BlocProvider.of<ThemeCubit>(context)
                          .changeLocale(englishLocale),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 0,
                color: LightColors.cardBG,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.language, color: LightColors.textGray),
                      const SizedBox(width: 10),
                      Text(
                        BlocProvider.of<ThemeCubit>(context)
                            .locale
                            .languageCode,
                        style: const TextStyle(
                          color: LightColors.textGray,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // SvgPicture.asset(
            //   assetName,
            // ),
            Text(
              'امان',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '''''كل الجمعيات مضمونة بسبب ان كل مستخدمين 
    بيقدمو ضمانات قانونية''',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontWeight: FontWeight.normal
              ),
            ),
          ],
        ),
      ),
    );
  }
}
