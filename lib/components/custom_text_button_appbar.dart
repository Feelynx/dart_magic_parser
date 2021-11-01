import 'package:desox_fran_website/util/costants.dart';
import 'package:flutter/material.dart';

class CustomAppBarTextButton extends StatelessWidget {
  CustomAppBarTextButton({required this.onPressed, required this.text});

  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.all(kPantonePrimary),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
