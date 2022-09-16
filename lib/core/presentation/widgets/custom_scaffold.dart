import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    Key? key,
    required this.title,
    this.leading,
    this.actions,
    required this.child,
    this.padding = const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
  }) : super(key: key);

  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: leading,
        actions: actions,
      ),
      body: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        padding: padding,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: child,
        ),
      ),
    );
  }
}
