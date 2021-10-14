// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/home.dart';

class FavSection extends StatelessWidget {
  final List FavContact = [
    //images/avatar/p1.jpg
    {'name': 'Warda', 'profile': 'images/avatar/p1.jpg'},
    {'name': 'Simo', 'profile': 'images/avatar/p2.jpg'},
    {'name': 'Wiame', 'profile': 'images/avatar/p3.jpg'},
    {'name': 'Jamal', 'profile': 'images/avatar/p4.jpg'},
    {'name': 'Prof', 'profile': 'images/avatar/p5.jpg'},
    {'name': 'TEK', 'profile': 'images/avatar/p6.jpg'},
  ];
  FavSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: dGreen,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text('Favorite contacts',
                        style: GoogleFonts.inter(
                            color: dWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.w400))),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      color: dWhite,
                      size: 20,
                    ))
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: FavContact.map((contact) => Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Container(
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(contact['profile']),
                            ),
                          )
                        ],
                      ),
                    )).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
