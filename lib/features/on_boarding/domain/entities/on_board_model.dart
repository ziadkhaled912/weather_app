import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gam3ity/generated/l10n.dart';

class OnBoard extends Equatable {
  final String title;
  final String subtitle;
  final String image;

  const OnBoard({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  List<Object?> get props => [title, subtitle, image];
}

List<OnBoard> onBoardingList(BuildContext context) => [
  OnBoard(
    title: S.of(context).onBoardingTitle1,
    subtitle: S.of(context).onBoardingSubtitle1,
    image: 'assets/svg/boarding-1.svg',
  ),
  OnBoard(
    title: S.of(context).onBoardingTitle2,
    subtitle: S.of(context).onBoardingSubtitle2,
    image: 'assets/svg/boarding-2.svg',
  ),
  OnBoard(
    title: S.of(context).onBoardingTitle3,
    subtitle: S.of(context).onBoardingSubtitle3,
    image: 'assets/svg/boarding-2.svg',
  ),
];