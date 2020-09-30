import 'package:flutter/material.dart';

import '../../../common.dart';

class SmallTextAtm extends StatelessWidget {
  final String text;
  final TextStyle style;
  final int maxLine;
  final TextOverflow overflow;
  final TextAlign align;

  const SmallTextAtm(
    this.text, {
    Key key,
    this.style,
    this.maxLine,
    this.overflow,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle _baseStyle =
        Theme.of(context).textTheme.bodyText1.copyWith(fontSize: Dimens.dp10);

    return Text(
      text,
      style: _baseStyle?.merge(style)?.copyWith(fontSize: Dimens.dp10) ??
          _baseStyle,
      maxLines: maxLine,
      overflow: overflow,
      textAlign: align,
    );
  }
}
