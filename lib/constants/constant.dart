import 'package:flutter/material.dart';
import 'package:insta_clone/utils/color_utils.dart';


 const kInputDecoration = InputDecoration(
  hintText: '',
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
          color: Colors.grey
      )
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
        color: Colors.black,
        width: 1.0
    ),
  ),
  fillColor: ColorUtils.loginFieldColor,
);