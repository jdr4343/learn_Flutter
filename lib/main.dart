// import 'dart:html';

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '캐릭터 카드 만들기', // 앱의 이름
//       theme: ThemeData( //앱의 기본적인 디자인 테마를 지정하는 위젯
//         primaryColor: Colors.teal //앱에서 기본적으로 사용할 색깔
//       ),
//       home: Grade(),//앱이 정상적으로 시작했을 떄 가장 먼저 보여주는 경로
//       debugShowCheckedModeBanner: false, //디버그 빨강띠 없에기
//     );
//   }
// }
// //MARK : 홈화면
// //홈 화면 내에 뭔가 데이터를 받거나 터치했을때 모양이 변하거나 상태가 변하는 동적인 요소가 있다면
// //Stlessful 위젯을 사용해야합니다.
// class Grade extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( // 빈 도화지 같은 역활 없다면 그 어떠한 요소들도 화면에 배치할수 없습니다.
//     backgroundColor: Colors.amber[800],
//       appBar: AppBar(
//         title: Text("Banto"),
//         backgroundColor: Colors.amber[700],
//         elevation: 0.0, //앱바의 쉐딩 제거
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start, //가로 정렬
//           children: [
//             Row(children: [
//                Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('1.png'),
//                 radius: 60.0, // 원의 크기를 지정
//               ),
//             ),
//             SizedBox(width: 30,)
//             ],
//             mainAxisAlignment: MainAxisAlignment.center,
//             ),

//             Divider( // 구분선
//               height: 60.0,
//               color: Colors.grey[850],
//               thickness: 0.5,
//               endIndent: 30,
//             ),
//             Text('Name', style: TextStyle(
//               color: Colors.white,
//               letterSpacing: 2.0, //철자간의 간격
//             ),
//             ),
//             SizedBox(height: 10.0,),//간격 추가
//             Text('Banto', style: TextStyle(
//               color: Colors.white,
//               letterSpacing: 2.0,
//               fontSize: 28.0,
//               fontWeight: FontWeight.bold
//             ),
//             ),
//               SizedBox(height: 30.0,),//간격 추가
//             Text('Banto Power Level', style: TextStyle(
//               color: Colors.white,
//               letterSpacing: 2.0,
//             ),
//             ),
//               SizedBox(height: 10.0,),//간격 추가
//             Text('14', style: TextStyle(
//               color: Colors.white,
//               letterSpacing: 2.0,
//               fontSize: 28.0,
//               fontWeight: FontWeight.bold
//             ),
//             ),
//             SizedBox(height: 30.0,),
//             Row(
//               children: [
//                 Icon(Icons.check_circle_outline),
//                 SizedBox(width: 10.0,),
//                 Text('using fireball', style: TextStyle(
//                   fontSize: 16.0,
//                   letterSpacing: 1.0
//                 ),
//                 )
//               ],
//             ),
//              Row(
//               children: [
//                 Icon(Icons.check_circle_outline),
//                 SizedBox(width: 10.0,),
//                 Text('face hero tattoo', style: TextStyle(
//                   fontSize: 16.0,
//                   letterSpacing: 1.0
//                 ),
//                 )
//               ],
//             ),
//              Row(
//               children: [
//                 Icon(Icons.check_circle_outline),
//                 SizedBox(width: 10.0,),
//                 Text('fire frame', style: TextStyle(
//                   fontSize: 16.0,
//                   letterSpacing: 1.0
//                 ),
//                 )
//               ],
//             ),
//             Row(children: [
//                Center(child: CircleAvatar(
//               backgroundImage: AssetImage('2.png'),
//               radius: 40.0,
//               //앱 자체가 png로 배경이 없을 경우 색깔을 지정해주어 일체감을 줄수 있습니다
//               backgroundColor: Colors.amber[800],
//             ),
//             ),
//             SizedBox(width: 30,)

//             ],
//             mainAxisAlignment: MainAxisAlignment.center,
//             ),

//           ],
//         ),
//       )
//       );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '플러터 배우기2',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('플러터 배우기'),
          elevation: 0.0,
          actions: [
            IconButton(
                icon: Icon(Icons.shop),
                onPressed: () {
                  print('shop');
                }),
            IconButton(
                icon: Icon(Icons.star),
                onPressed: () {
                  print('star');
                }),
            IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {
                  print('favorite');
                })
          ],
        ), //간단한 위젯이나 아이콘을 왼쪽에 위치 시킵니다.
        drawer: Drawer(
          child: ListView(
            // 테이블 뷰랑 비슷한거 같다. ListView == tableView, ListTile == tableViewCell
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('1.png'),
                  backgroundColor: Colors.white,
                ),
                //@required 필수 요소
                accountName: Text('드로월 메뉴'),
                accountEmail: Text("jdr4343@naver.com"),
                onDetailsPressed: () {
                  print('화면을 내립니다');
                }, //추가로 뭔가 더 펼쳐지는 메뉴기능
                decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0))), //화면꾸미기
                otherAccountsPictures: [
                  //한개 이상의 다른계정 이미지를 추가 할수 있습니다.
                  CircleAvatar(
                    backgroundImage: AssetImage('2.png'),
                    backgroundColor: Colors.white,
                  ),
                  // CircleAvatar(
                  //    backgroundImage: AssetImage('2.png'),
                  //    backgroundColor: Colors.white,
                  //  ),
                ],
              ),
              ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.grey[850],
                  ),
                  title: Text('Home'),
                  onTap: () {
                    print('홈이 클릭되었습니다.');
                  },
                  trailing: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      print('object');
                    },
                  )),
              ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.grey[850],
                  ),
                  title: Text('Settings'),
                  onTap: () {
                    print('세팅이 클릭되었습니다.');
                  },
                  trailing: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      print('object');
                    },
                  )),
              ListTile(
                  leading: Icon(
                    Icons.question_answer,
                    color: Colors.grey[850],
                  ),
                  title: Text('Q&A'),
                  onTap: () {
                    print('홈이 클릭되었습니다.');
                  },
                  trailing: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      print('object');
                    },
                  )),
            ],
          ),
        ),
        body: Builder(
          //바디에서 곧바로 센터 위젯을 불러오지 않고 빌더함수네에서 센터 위젯을 리턴
          builder: (BuildContext ctx) {
            return Center(
              child: TextButton(
                child: Text('스낵바'),
                style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 14),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                    foregroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  ScaffoldMessenger.of(ctx)
                      .showSnackBar(SnackBar(content: Text('안녕')));
                },
              ),
            );
          },
        ));
  }
}
