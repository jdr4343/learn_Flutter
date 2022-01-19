import 'dart:html';

import 'package:flutter/material.dart';


class ScreenA extends StatelessWidget {
  const ScreenA({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text('B화면으로',style: TextStyle(color: Colors.white),),
              onPressed: (){
                Navigator.pushNamed(context, '/b');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)
              ),
            ),
            SizedBox(
              height: 20
            ),
            TextButton(
              child: Text('C화면으로',style: TextStyle(color: Colors.white)),
              onPressed: (){
               Navigator.pushNamed(context, '/c');
              },
               style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)
            )
            ),

          ],
        )
      ),
    );
  }
}