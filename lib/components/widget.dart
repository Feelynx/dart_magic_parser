import 'package:desox_fran_website/util/costants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {required this.iconData,
      required this.labelText,
      required this.hintText,
      required this.hasMaxLines,
      required this.isPasswordField});

  final IconData iconData;
  final String labelText;
  final String hintText;
  final bool hasMaxLines;
  final bool isPasswordField;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  FocusNode? _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: widget.hasMaxLines
          ? TextFormField(
              focusNode: _focusNode,
              onTap: () {
                setState(() {
                  FocusScope.of(context).requestFocus(_focusNode);
                });
              },
              onEditingComplete: () {
                setState(() {
                  FocusScope.of(context).unfocus();
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(
                  widget.iconData,
                  color: _focusNode!.hasFocus ? kPantoneSecondary : kPantoneSecondary,
                ),
                labelText: widget.labelText,
                labelStyle:
                    TextStyle(color: _focusNode!.hasFocus ? kPantoneSecondary : kPantoneSecondary),
                hintText: widget.hintText,
                hintStyle:
                    TextStyle(color: _focusNode!.hasFocus ? kPantoneSecondary : kPantoneSecondary),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPantoneSecondary),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: kPantoneSecondary),
                ),
              ),
              maxLines: null,
            )
          : TextFormField(
              focusNode: _focusNode,
              onTap: () {
                setState(() {
                  FocusScope.of(context).requestFocus(_focusNode);
                });
              },
              onEditingComplete: () {
                setState(() {
                  FocusScope.of(context).unfocus();
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(widget.iconData,
                    color: _focusNode!.hasFocus ? kPantoneSecondary : kPantoneSecondary),
                labelText: widget.labelText,
                labelStyle:
                    TextStyle(color: _focusNode!.hasFocus ? kPantoneSecondary : kPantoneSecondary),
                hintText: widget.hintText,
                hintStyle:
                    TextStyle(color: _focusNode!.hasFocus ? kPantoneSecondary : kPantoneSecondary),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPantoneSecondary),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: kPantoneSecondary),
                ),
              ),
              obscureText: widget.isPasswordField,
            ),
    );
  }
}
