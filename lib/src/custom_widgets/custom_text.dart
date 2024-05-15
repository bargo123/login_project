import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.text, {
    Key? key,
    this.style,
    this.textAlign,
    this.shouldFit = false,
  }) : super(key: key);
  final String text;
  final TextStyle? style;
  final bool shouldFit;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return shouldFit
        ? Wrap(children: [
            Text(
              text,
              textAlign: textAlign,
              style: style,
            ),
          ])
        : Text(
            text,
            textAlign: textAlign,
            style: style,
          );
  }
}
