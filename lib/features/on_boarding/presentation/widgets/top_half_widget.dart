import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gam3ity/features/on_boarding/domain/entities/on_board_model.dart';

class TopHalfWidget extends StatelessWidget {
  const TopHalfWidget({Key? key, required this.model}) : super(key: key);

  final OnBoard model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SvgPicture.asset(
            model.image,
          ),
        ),
        const SizedBox(height: 40),
        Text(
          model.title,
          style: Theme.of(context).textTheme.headline4,
          textAlign: TextAlign.center,
        ),
        Text(
          model.subtitle,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
