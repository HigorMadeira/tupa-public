import 'package:flutter/material.dart';

class CustomDataTableColumnWidget extends StatelessWidget {
  const CustomDataTableColumnWidget({
    Key? key,
    required this.child,
    this.centered = false,
  }) : super(key: key);
  final Widget child;
  final bool centered;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          centered ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Flexible(child: child),
        const SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
