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
      padding: EdgeInsets.all(10),
      children: [
        Container(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: CircleAvatar(
                      child: Icon(Icons.person),
                      radius: 40,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      kMarcoDeSossiProfileInfo,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  color: kPantonePrimary,
                ),
              ),
              Text(
                kMarcoDeSossiDescription,
                /*style: TextStyle(fontSize: 16),*/
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              ),
              Divider(
                color: kPantonePrimary,
              ),
            ],
          ),
        )
      ],
    );
  }
}
