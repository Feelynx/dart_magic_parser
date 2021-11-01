import 'package:desox_fran_website/util/costants.dart';
import 'package:flutter/material.dart';

class HomepageDesktop extends StatelessWidget {
  const HomepageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            alignment: Alignment.center,
            fit: StackFit.passthrough,
            children: [
              Positioned(
                child: Image.asset(
                  'images/HomeBackgroundDark.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 60,
                left: 60,
                right: MediaQuery.of(context).size.width / 2.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Associazione Professionale De Sossi Franchellucci, da sempre al tuo fianco per aiutarti.",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: kPantoneWhite),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      descriptionHomePage,
                      style: TextStyle(fontSize: 16, color: kPantoneWhite),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
