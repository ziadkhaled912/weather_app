import'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class NoDataWidget extends StatelessWidget {
  const NoDataWidget({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
   return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            size: 45,
            color: Colors.grey,
          ),
          const SizedBox(height: 15),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          TextButton(
            onPressed: onPressed,
            child: Text("Try again", style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: Theme.of(context).primaryColor
            ),),
          ),
        ],
      ),
    );
  }
}
