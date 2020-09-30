import 'package:flutter/material.dart';

import '../../../common.dart';

class PrimaryButtonAtm extends StatelessWidget {
  const PrimaryButtonAtm(
      {Key key,
      @required this.onPressed,
      this.color,
      @required this.child,
      this.textColor,
      this.radius})
      : super(key: key);

  final Widget child;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: child,
      color: color ?? AppColors.primaryColor,
      disabledTextColor: Colors.white,
      disabledColor: Theme.of(context).disabledColor,
      textColor: textColor ?? Colors.white,
      shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(radius ?? Dimens.roundedButton)),
      elevation: 0,
      highlightElevation: 0,
      hoverElevation: 0,
    );
  }
}
