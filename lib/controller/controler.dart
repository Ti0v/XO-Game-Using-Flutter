// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controler extends GetxController {
  var PlayesXO = ['', '', '', '', '', '', '', '', ''];
  int count = 0;
  bool turn = true;

  Press(int index) {
    if (turn && PlayesXO[index] == '') {
      PlayesXO[index] = "O";
      turn = !turn;
      count++;
    } else if (!turn && PlayesXO[index] == '') {
      PlayesXO[index] = 'X';
      count++;
      turn = !turn;
    }
    checWind();
    update();
  }

  void checWind() {
    if (PlayesXO[0] == PlayesXO[1] &&
        PlayesXO[0] == PlayesXO[2] &&
        PlayesXO[0] != '') {
      SnackBar("Winner");
    }
    if (PlayesXO[3] == PlayesXO[4] &&
        PlayesXO[3] == PlayesXO[5] &&
        PlayesXO[3] != '') {
      SnackBar("Winner");
    }
    if (PlayesXO[6] == PlayesXO[7] &&
        PlayesXO[6] == PlayesXO[8] &&
        PlayesXO[6] != '') {
      SnackBar("Winner");
    }
    if (PlayesXO[0] == PlayesXO[3] &&
        PlayesXO[0] == PlayesXO[6] &&
        PlayesXO[0] != '') {
      SnackBar("Winner");
    }
    if (PlayesXO[1] == PlayesXO[4] &&
        PlayesXO[1] == PlayesXO[7] &&
        PlayesXO[1] != '') {
      SnackBar("Winner");
    }
    if (PlayesXO[2] == PlayesXO[5] &&
        PlayesXO[2] == PlayesXO[8] &&
        PlayesXO[2] != '') {
      SnackBar("Winner");
    }
    if (PlayesXO[0] == PlayesXO[4] &&
        PlayesXO[0] == PlayesXO[8] &&
        PlayesXO[0] != '') {
      SnackBar("Winner");
    }
    if (PlayesXO[6] == PlayesXO[4] &&
        PlayesXO[6] == PlayesXO[2] &&
        PlayesXO[6] != '') {
      SnackBar("Winner");
    } else if (count == 9) {
      SnackBar("Draw");
    }
    update();
  }

  void SnackBar(String num) {
    Get.defaultDialog(title: num, middleText: "Started The Game", actions: [
      ElevatedButton(onPressed: (() => again()), child: const Text("Restart"))
    ]);
    update();
  }

  again() {
    count = 0;
    Get.back();
    PlayesXO = ['', '', '', '', '', '', '', '', ''];
    update();
  }
}
