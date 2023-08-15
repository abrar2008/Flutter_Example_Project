import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'colors_schemes.dart';
import 'constants.dart';


class CustomeTextFormField extends StatefulWidget {
  String? hintText;
  TextStyle? hintTextsty;
  bool obscureText;
  double horizontalMergin;
  int maxLines;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;

  TextEditingController? controller;
  String? Function(String?)? validator;
  CustomeTextFormField({
    Key? key,
    this.hintText,
    this.validator,
    this.maxLines = 1,
    this.controller,
    this.hintTextsty,

    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.horizontalMergin = 0.06,
    this.obscureText = false,
  }) : super(key: key);

  @override
  State<CustomeTextFormField> createState() => _CustomeTextFormFieldState();
}

class _CustomeTextFormFieldState extends State<CustomeTextFormField> {
  late bool _pwShow;
  @override

  void initState() {

    _pwShow = widget.obscureText;
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: sizeWidth(context) * widget.horizontalMergin),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        controller: widget.controller,
        obscureText: _pwShow,
        maxLines: widget.maxLines,
        textInputAction:widget.textInputAction,
        decoration: InputDecoration(
          filled: true,
          isCollapsed: true,
          fillColor: whiteColor,
          hintText: widget.hintText,
          hintStyle:  widget.hintTextsty ,

          errorMaxLines: 3,
          contentPadding: EdgeInsets.fromLTRB(14, 14.0, 0, 14.0),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: primaryColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.grey)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: errorColor)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: errorColor)),
          suffixIcon: Visibility(
            visible: widget.obscureText,
            child: InkWell(
              onTap: () {
                setState(() {
                  _pwShow = !_pwShow;
                });
              },
              child: _pwShow
                  ? Icon(
                Icons.visibility_off,
                color: Colors.grey,
              )
                  : Icon(
                Icons.visibility,
                color: Colors.grey[700],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
