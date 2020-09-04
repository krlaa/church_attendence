import 'main.dart';
import 'package:flutter/material.dart';
import 'cards.dart';

class CheckAttend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(33,33,33, 1),
      ),
      body: Container(
        color: Color.fromRGBO(33,33,33, 1),
        child: ListView(
          children: <Widget>[
            preKGC(),
                  kGC(),
                  firstGC(),
                  secondGC(),
                  thirdGC(),
                  fourthGC(),
                  fifthGC(),
                  sixthGC(),
                  seventhGC(),
                  eigthGC(),
                  ninthGC(),
                  tenthGC(),
                  eleventhGC(),
                  twevelthGC(),
          ],
        ),
      )
      
    );
  }
}