import 'package:desox_fran_website/util/costants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset(
                'images/DeSossiFranchellucciLogo500NoText.png',
              ),
            ),
            Text("Caricamento in corso..."),
            SpinKitThreeInOut(
              size: 30,
              color: kPantonePrimary,
            ),
          ],
        ),
      ),
    );
  }
}
