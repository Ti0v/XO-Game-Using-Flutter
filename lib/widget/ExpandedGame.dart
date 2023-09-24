import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xogame/controller/controler.dart';

class ExpandedGame extends StatefulWidget {
  @override
  State<ExpandedGame> createState() => _ExpandedGameState();
}

class _ExpandedGameState extends State<ExpandedGame> {
  @override
  Widget build(BuildContext context) {
    final controlerr = Get.put(Controler());
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
                onTap: () {
                  controlerr.Press(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(153, 255, 255, 255),
                          width: 2)),
                  child: Center(
                      child: AnimatedBuilder(
                    builder: (context, child) {
                      return (Text(
                        '${controlerr.PlayesXO[index]}',
                        style:
                            const TextStyle(fontSize: 40, color: Colors.white),
                      ));
                    },
                    animation: controlerr,
                  )),
                ));
          },
        ),
      ),
    );
  }
}
