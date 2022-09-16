import 'package:flutter/material.dart';

class DataRowBuildItem extends StatelessWidget {
  const DataRowBuildItem({
    Key? key,
    required this.title,
    required this.title2,
    required this.value1,
    required this.value2,
  }) : super(key: key);

  final String title;
  final String title2;
  final String value1;
  final String value2;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text(
                value1,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title2),
              Text(
                value2,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
