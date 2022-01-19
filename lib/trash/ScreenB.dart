import 'package:flutter/material.dart';
import 'ScreenA.dart';
import 'ScreenC.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('ScreenB'),
         backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text('A화면으로',style: TextStyle(color: Colors.white),),
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue)
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
                backgroundColor: MaterialStateProperty.all(Colors.blue)
            )
            ),

          ],
        )
      ),
    );
  }
}