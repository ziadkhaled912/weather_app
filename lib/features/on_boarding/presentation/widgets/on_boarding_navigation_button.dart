import 'package:flutter/material.dart';
import 'package:gam3ity/generated/l10n.dart';

class OnBoardingNavigationButton extends StatelessWidget {
  const OnBoardingNavigationButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    this.start = true,
    required this.isLast,
  }) : super(key: key);

  final String text;
  final Function() onPressed;
  final Color backgroundColor;
  final Color textColor;
  final bool start;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      decoration: BoxDecoration(
        borderRadius: isLast
            ? BorderRadius.circular(30)
            : start
                ? const BorderRadiusDirectional.only(
                    topEnd: Radius.circular(30),
                    bottomEnd: Radius.circular(30),
                  )
                : const BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(30),
                    topStart: Radius.circular(30),
                  ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: MaterialButton(
        onPressed: onPressed,
        color: backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: isLast ? 30 : 45),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0)
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: textColor,
              ),
        ),
      ),
    );
  }
}
