import 'package:flutter/material.dart';

import '../../../common.dart';

class SubTitleTextAtm extends StatelessWidget {
  final String text;
  final TextStyle style;
  final int maxLine;
  final TextOverflow overflow;
  final TextAlign align;

  const SubTitleTextAtm(
    this.text, {
    Key key,
    this.style,
    this.maxLine,
    this.overflow,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle _baseStyle = Theme.of(context).textTheme.subtitle1;

    return Text(
      text,
      style: _baseStyle?.merge(style)?.copyWith(fontSize: Dimens.dp14) ??
          _baseStyle,
      maxLines: maxLine,
      overflow: overflow,
      textAlign: align,
    );
  }
}
