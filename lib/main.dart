import 'package:flutter/material.dart';
import 'package:tori_native/components/ContentArea.dart';
import 'package:tori_native/view/Login.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    routes: <String, WidgetBuilder>{
      '/app': (BuildContext context) => ContentArea(),
    },
  ));
}
