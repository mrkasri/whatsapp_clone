import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const dGreen = Color(0xFF2ac0a6);
const dWhite = Colors.white;
const dBlack = Colors.black;

class MessageSection extends StatelessWidget {
   final List messages = [
    
    {'senderName': 'Prof', 'senderProfile': 'images/avatar/p5.jpg', 'Message' : 'Hello', 'unRead':0, 'date': '14:33' },
    {'senderName': 'TEK', 'senderProfile': 'images/avatar/p6.jpg', 'Message' : 'Hello, how are you', 'unRead':2, 'date': '10:33'},
    {'senderName': 'Warda', 'senderProfile': 'images/avatar/p1.jpg', 'Message' : 'Vous avez de la chance', 'unRead':5, 'date': '11:00'},
    {'senderName': 'Simo', 'senderProfile': 'images/avatar/p2.jpg', 'Message' : 'Hello, comment va tue', 'unRead':3, 'date': '09:30'},
    {'senderName': 'Wiame', 'senderProfile': 'images/avatar/p3.jpg', 'Message' : 'Bonjour', 'unRead':1, 'date': '1205'},
    {'senderName': 'Jamal', 'senderProfile': 'images/avatar/p4.jpg', 'Message' : 'Hello', 'unRead':0, 'date': '12:33'},
  ];

   MessageSection({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: messages.map((message) {return InkWell(
          //overlayColor: MaterialStateProperty.all(Colors.greenAccent),
          splashColor: Colors.greenAccent,
          onTap: (){
            Navigator.pushNamed(context, 'chatPage');
          },
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 15),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 50,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(color: dGreen, shape: BoxShape.circle, image: DecorationImage(image: AssetImage(message['senderProfile']))),
                ),
                Expanded(
                  child: Column(
                  children: [Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(message['senderName'], style: GoogleFonts.inter(
                          color: dBlack,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),),
                        Text(message['Message'], style: GoogleFonts.inter(
                          color: Colors.grey[700],
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ))
                      ],
                    ),
                    Column(
                      children: [Text(message['date'], style: GoogleFonts.inter( color: Colors.grey[500], fontSize: 12 ),),
                      message['unRead'] != 0 ? Container(
                        padding: EdgeInsets.all(5),
                      child: Text(message['unRead'].toString(),
                      style: GoogleFonts.inter( color: dWhite, fontSize: 12, fontWeight: FontWeight.w500)
                      ),
                      decoration: BoxDecoration(
                        color: dGreen,
                        shape: BoxShape.circle
                      ),
                      ) : Container()],
                    )]
                  )],
                ))
              ],
            ),)
        );}).toList(),
      ),
    );
  }
}