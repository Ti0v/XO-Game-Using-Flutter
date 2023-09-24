import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandedUp extends StatelessWidget {
  const ExpandedUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: Container(
          color: Color.fromARGB(108, 0, 0, 0),
          padding: EdgeInsets.all(10),
          child: Text(
            "X / O  Game",
            style: GoogleFonts.secularOne(
                color: Colors.white,
                textStyle: Theme.of(context).textTheme.headline3),
          ),
        ),
      ),
    );
  }
}
