import 'package:desox_fran_website/components/widget.dart';
import 'package:desox_fran_website/util/costants.dart';
import 'package:flutter/material.dart';

class HomepageDesktop extends StatelessWidget {
  const HomepageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Stack(
          alignment: Alignment.center,
          fit: StackFit.passthrough,
          children: [
            Positioned(
              child: Image.asset(
                'images/HomeBackgroundDark.png',
                height: 500,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 6,
              right: MediaQuery.of(context).size.width / 6,
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Associazione Professionale De Sossi Franchellucci, da sempre al tuo fianco per aiutarti.",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: kPantoneWhite),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(
            top: 60,
            bottom: 60,
            left: MediaQuery.of(context).size.width / 6,
            right: MediaQuery.of(context).size.width / 6,
          ),
          child: Text(
            kDescriptionHomePage,
            style: TextStyle(fontSize: 20, color: kPantonePrimary),
          ),
        ),
        SizedBox(
          height: 200,
        ),
        PrivacyBottomBar(),
      ],
    );
  }
}
