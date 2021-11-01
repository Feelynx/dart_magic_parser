import 'package:desox_fran_website/components/custom_loader.dart';
import 'package:desox_fran_website/presentation/pages/homepage/homepage_desktop.dart';
import 'package:desox_fran_website/presentation/pages/homepage/homepage_mobile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:desox_fran_website/presentation/base_screen.dart';

class HomePageScreen extends StatefulWidget {
  static const String id = '/';

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> with SingleTickerProviderStateMixin {
  bool isInterfaceReady = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 1),
      () {
        setState(() {
          isInterfaceReady = true;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!isInterfaceReady) {
      return CustomLoader();
    } else {
      return SafeArea(
        child: ScreenBase(
          largeSizeLayoutBody: HomepageDesktop(),
          smallSizeLayoutBody: HomepageMobile(),
        ),
      );
    }
  }
}
