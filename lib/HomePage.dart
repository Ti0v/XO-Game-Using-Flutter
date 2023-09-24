// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xogame/widget/ExpandedDown.dart';
import 'package:xogame/widget/ExpandedGame.dart';
import 'package:xogame/widget/ExpandedUp.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.indigo[800],
      body: Column(children: [
        ExpandedUp(),
        ExpandedGame(),
        ExpandedDown(),
      ]),
    ));
  }
}
