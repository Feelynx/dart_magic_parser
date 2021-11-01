import 'package:desox_fran_website/components/widget.dart';
import 'package:desox_fran_website/util/costants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhoWeAreMobile extends StatefulWidget {
  const WhoWeAreMobile({Key? key}) : super(key: key);

  @override
  _WhoWeAreMobileState createState() => _WhoWeAreMobileState();
}

class _WhoWeAreMobileState extends State<WhoWeAreMobile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      /*padding: EdgeInsets.all(20),*/
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  'images/personplaceholdercircle.png',
                                ),
                                radius: 110,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                kMarcoDeSossiProfileInfo,
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          kMarcoDeSossiDescription,
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  height: 2,
                  color: kPantonePrimary,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  'images/personplaceholder2circle.png',
                                ),
                                radius: 110,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                kFabioFranchellucciProfileInfo,
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          kFabioFranchellucciDescription,
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        PrivacyBottomBar(),
      ],
    );
  }
}
