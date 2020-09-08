import 'package:flutter/material.dart';

import '../../../shared/shared.dart';

class BodyTextAtm extends StatelessWidget {
  final String text;
  final TextStyle style;
  final int maxLine;
  final TextOverflow overflow;
  final TextAlign align;

  const BodyTextAtm(
    this.text, {
    Key key,
    this.style,
    this.maxLine,
    this.overflow,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle _baseStyle = Theme.of(context).textTheme.bodyText2;

    return Text(
      text,
      style: _baseStyle?.merge(style)?.copyWith(fontSize: Dimens.dp12) ??
          _baseStyle,
      maxLines: maxLine,
      overflow: overflow,
      textAlign: align,
    );
  }
}
