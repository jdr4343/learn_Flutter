import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '캐릭터 카드 만들기', // 앱의 이름
      theme: ThemeData( //앱의 기본적인 디자인 테마를 지정하는 위젯
        primaryColor: Colors.teal //앱에서 기본적으로 사용할 색깔
      ),
      home: Grade(),//앱이 정상적으로 시작했을 떄 가장 먼저 보여주는 경로
      debugShowCheckedModeBanner: false, //디버그 빨강띠 없에기
    );
  }
}
//MARK : 홈화면
//홈 화면 내에 뭔가 데이터를 받거나 터치했을때 모양이 변하거나 상태가 변하는 동적인 요소가 있다면 
//Stlessful 위젯을 사용해야합니다.
class Grade extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold( // 빈 도화지 같은 역활 없다면 그 어떠한 요소들도 화면에 배치할수 없습니다.
    backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text("Banto"),
        backgroundColor: Colors.amber[700],
        elevation: 0.0, //앱바의 쉐딩 제거
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //가로 정렬
          children: [
            Row(children: [
               Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('1.png'),
                radius: 60.0, // 원의 크기를 지정
              ),
            ),
            SizedBox(width: 30,)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            ),
           
            Divider( // 구분선
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30,
            ),
            Text('Name', style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0, //철자간의 간격 
            ),
            ),
            SizedBox(height: 10.0,),//간격 추가
            Text('Banto', style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
              SizedBox(height: 30.0,),//간격 추가
            Text('Banto Power Level', style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
            ),
              SizedBox(height: 10.0,),//간격 추가
            Text('14', style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0,),
                Text('using fireball', style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),
                )
              ],
            ),
             Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0,),
                Text('face hero tattoo', style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),
                )
              ],
            ),
             Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0,),
                Text('fire frame', style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),
                )
              ],
            ),
            Row(children: [
               Center(child: CircleAvatar(
              backgroundImage: AssetImage('2.png'),
              radius: 40.0,
              //앱 자체가 png로 배경이 없을 경우 색깔을 지정해주어 일체감을 줄수 있습니다
              backgroundColor: Colors.amber[800], 
            ),
            ),
            SizedBox(width: 30,)

            ],
            mainAxisAlignment: MainAxisAlignment.center,
            ),
           


          ],
        ),
      )
      );
  }
}