import 'package:flutter/material.dart';

import '../../../common.dart';

class TitleTextAtm extends StatelessWidget {
  const TitleTextAtm(
    this.text, {
    Key key,
    this.style,
    this.maxLine,
    this.overflow,
    this.align,
  }) : super(key: key);

  final String text;
  final TextStyle style;
  final int maxLine;
  final TextOverflow overflow;
  final TextAlign align;

  TextStyle _getStyle(BuildContext context) =>
      Theme.of(context).textTheme.headline6;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          _getStyle(context)?.merge(style)?.copyWith(fontSize: Dimens.dp16) ??
              _getStyle(context),
      maxLines: maxLine,
      overflow: overflow,
      textAlign: align,
    );
  }
}
