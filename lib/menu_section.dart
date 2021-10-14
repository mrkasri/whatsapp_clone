import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const dGreen = Color(0xFF2ac0a6);
const dWhite = Colors.white;
const dBlack = Colors.black;

class MenuSection extends StatelessWidget {
  final menu = const ['Messages', 'Online', 'Groups', 'Calls'];

  MenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      height: 100,
      // ignore: prefer_const_constructors
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: menu
                .map((item) => Container(
                      margin: EdgeInsets.only(right: 50),
                      child: Text(
                        item,
                        style: GoogleFonts.inter(
                            color: Colors.white60, fontSize: 20),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
