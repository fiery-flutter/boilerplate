import 'package:flutter/cupertino.dart';

class Dimens {
  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // BASE DIMENS
  static const double dp2 = 2;
  static const double dp4 = 4;
  static const double dp6 = 6;
  static const double dp8 = 8;
  static const double dp10 = 10;
  static const double dp12 = 12;
  static const double dp14 = 14;
  static const double dp16 = 16;
  static const double dp18 = 18;
  static const double dp20 = 20;
  static const double dp22 = 22;
  static const double dp24 = 24;
  static const double dp28 = 28;
  static const double dp32 = 32;
  static const double dp36 = 36;
  static const double dp38 = 38;

  //  THEME DIMENS
  static const double roundedButton = dp8;
  static const double roundedSmallButton = dp4;
  static const double roundedDialog = dp6;
}
