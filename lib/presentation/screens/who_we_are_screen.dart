import 'package:desox_fran_website/presentation/base_screen.dart';
import 'package:flutter/material.dart';

class WhoWeAreScreen extends StatefulWidget {
  static const String id = '/chisiamo';

  @override
  _WhoWeAreScreenState createState() => _WhoWeAreScreenState();
}

class _WhoWeAreScreenState extends State<WhoWeAreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ScreenBase(
      largeSizeLayoutBody: Container(),
      smallSizeLayoutBody: Container(),
    ));
  }
}
