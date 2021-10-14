import 'package:flutter/material.dart';
import 'package:whatsapp_clone/favorite_section.dart';
import 'package:whatsapp_clone/menu_section.dart';

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
            // ignore: prefer_const_constructors
            icon: Icon(
              Icons.menu,
              color: dWhite,
              size: 30,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.search_rounded,
                color: dWhite,
                size: 30,
              )),
        ],
      ),
      body: Column(
        children: [
          MenuSection(),
          FavSection(),
          Expanded(
              child: Container(
            color: Colors.redAccent,
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: dGreen,
          onPressed: () {},
          child: const Icon(Icons.edit, size: 28)),
    );
  }
}
