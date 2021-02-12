import 'package:flutter/material.dart';

extension contextExtensions on BuildContext {
  void unFocus(){
    FocusScope.of(this).requestFocus(FocusNode());
  }
}