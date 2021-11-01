import 'package:desox_fran_website/util/costants.dart';
import 'package:flutter/material.dart';

class HomepageMobile extends StatelessWidget {
  const HomepageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'images/HomeBackgroundDark.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 60,
                left: 60,
                right: MediaQuery.of(context).size.width / 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Da sempre al tuo fianco per aiutarti.",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: kPantoneWhite),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      descriptionHomePageMobile,
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
