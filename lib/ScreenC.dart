import 'package:flutter/material.dart';
import 'ScreenA.dart';
import 'ScreenB.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('ScreenC'),
         backgroundColor: Colors.green,
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
                backgroundColor: MaterialStateProperty.all(Colors.green)
              ),
            ),
            SizedBox(
              height: 20
            ),
            TextButton(
              child: Text('B화면으로',style: TextStyle(color: Colors.white)),
              onPressed: (){
                Navigator.pushNamed(context, '/b');
              },
               style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)
            )
            ),

          ],
        )
      ),
    );
  }
}