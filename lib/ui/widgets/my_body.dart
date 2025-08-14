import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {

  Widget child;

  MyBody({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: child);
  }
}
