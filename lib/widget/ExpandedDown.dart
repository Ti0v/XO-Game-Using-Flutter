import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandedDown extends StatelessWidget {
  const ExpandedDown({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // ignore: avoid_unnecessary_containers
      child: Container(
        alignment: Alignment.center,
        child: Container(
          color: const Color.fromARGB(108, 0, 0, 0),
          padding: const EdgeInsets.all(10),
          child: Text(
            "Mazen_Developer",
            style: GoogleFonts.secularOne(
                color: Colors.white,
                textStyle: Theme.of(context).textTheme.headline3),
          ),
        ),
      ),
    );
  }
}
