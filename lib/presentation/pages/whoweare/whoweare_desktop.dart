import 'package:desox_fran_website/components/widget.dart';
import 'package:desox_fran_website/util/costants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhoWeAreDesktop extends StatefulWidget {
  const WhoWeAreDesktop({Key? key}) : super(key: key);

  @override
  _WhoWeAreDesktopState createState() => _WhoWeAreDesktopState();
}

class _WhoWeAreDesktopState extends State<WhoWeAreDesktop> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.asset(
                      'images/personplaceholder.jpg',
                      height: 480,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              kMarcoDeSossiProfileInfo,
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              kMarcoDeSossiDescription,
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  height: 2,
                  indent: 8,
                  endIndent: 8,
                  color: kPantonePrimary,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.asset(
                      'images/personplaceholder2.jpg',
                      height: 480,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              kFabioFranchellucciProfileInfo,
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              kFabioFranchellucciDescription,
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        PrivacyBottomBar(),
      ],
    );
  }
}
