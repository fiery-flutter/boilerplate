import 'package:flutter/cupertino.dart';

import 'app.dart';
import 'core/core.dart';

void main() {
  F.appFlavor = Flavor.PROD;
  runApp(App());
}