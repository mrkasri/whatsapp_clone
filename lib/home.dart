import 'package:flutter/material.dart';

const dGreen = Color(0xFF2ac0a6);
const dWhite = Colors.white;
const dBlack = Colors.black;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dBlack,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: dWhite,
              size: 30,
            )),
      ),
    );
  }
}
