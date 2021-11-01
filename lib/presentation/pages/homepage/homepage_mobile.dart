import 'package:desox_fran_website/components/widget.dart';
import 'package:desox_fran_website/util/costants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomepageMobile extends StatelessWidget {
  const HomepageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Image.asset(
                'images/HomeBackgroundDark.png',
                fit: BoxFit.cover,
                height: 400,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 8,
              right: MediaQuery.of(context).size.width / 8,
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Associazione Professionale De Sossi Franchellucci, da sempre al tuo fianco per aiutarti.",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: kPantoneWhite),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(40),
          child: Text(
            kDescriptionHomePage,
            style: TextStyle(fontSize: 16, color: kPantonePrimary),
          ),
        ),
        PrivacyBottomBar(),
      ],
    );
  }
}
