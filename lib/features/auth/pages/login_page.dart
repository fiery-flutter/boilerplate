import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      body: Center(
        child: Text(
          '${S.of(context).hello_world}',
        ),
      ),
    );
  }
}
