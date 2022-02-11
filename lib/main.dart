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
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learn_flutter/source/random_Englishwords.dart';
import 'trash/ScreenA.dart';
import 'trash/ScreenB.dart';
import 'trash/ScreenC.dart';
import 'source/random_Englishwords.dart';
import 'AnimationList/Animation_List.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '플러터 배우기',
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: AnimationList(),
      // initialRoute: '/',
      // //맵 자료를 나열합니다. Key 값인 '/' 불려지면 value 값인 ScreenA 위젯을 부릅니다.
      // routes: {
      //   '/' : (context) => ScreenA(),
      //   '/b' : (context) => ScreenB(),
      //   '/c' : (context) => ScreenC(),
      // },
      debugShowCheckedModeBanner: false,
    );
  }
}

 class MyHomePage extends StatelessWidget {
   const MyHomePage({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('플러터 배우기'),
         elevation: 0.0,
         actions: [
           IconButton(icon: Icon(Icons.shop), onPressed: () {print('shop');}),
           IconButton(icon: Icon(Icons.star), onPressed: () {print('star');}),
           IconButton(icon: Icon(Icons.favorite), onPressed: () {print('favorite');})
         ],
         
         ),//간단한 위젯이나 아이콘을 왼쪽에 위치 시킵니다.
         drawer: Drawer(
           child: ListView(// 테이블 뷰랑 비슷한거 같다. ListView == tableView, ListTile == tableViewCell
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
               onDetailsPressed: (){print('화면을 내립니다');},//추가로 뭔가 더 펼쳐지는 메뉴기능
               decoration: BoxDecoration(
                 color: Colors.red[200],
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(40.0),
                   bottomRight: Radius.circular(40.0)
                 )
               ),//화면꾸미기
               otherAccountsPictures: [//한개 이상의 다른계정 이미지를 추가 할수 있습니다.
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
                 leading: Icon(Icons.home, color: Colors.grey[850],),
                 title: Text('Home'),
                 onTap: (){print('홈이 클릭되었습니다.');},
                 trailing: IconButton(icon: Icon(Icons.add), onPressed: (){print('object');},)
               ),
               ListTile(
                 leading: Icon(Icons.settings, color: Colors.grey[850],),
                 title: Text('Settings'),
                 onTap: (){print('세팅이 클릭되었습니다.');},
                 trailing: IconButton(icon: Icon(Icons.add), onPressed: (){print('object');},)
               ),
               ListTile(
                 leading: Icon(Icons.question_answer, color: Colors.grey[850],),
                 title: Text('Q&A'),
                 onTap: (){print('홈이 클릭되었습니다.');},
                 trailing: IconButton(icon: Icon(Icons.add), onPressed: (){print('object');},)
               ), 
            ],
           ),
         ),
        //  body: Center(
        //    child: TextButton(
          
        //      child: Text('스낵바'),
        //      style: ButtonStyle(
        //        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 14),
        //      ),
        //     backgroundColor: MaterialStateProperty.all(Colors.teal),
        //     foregroundColor: MaterialStateProperty.all(Colors.white)
        //      ),
        //     onPressed: (){
        //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('안녕')));
        //       },
        //    ),
        //   )
        body: NavigatorTutorial(),
         );
       
   }
 }
//MARK : SnackBar
class MySnackBar extends StatelessWidget {
  const MySnackBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text('Show me'),
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              'hello', 
              textAlign: TextAlign.center, 
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.deepOrange
              ),
            ),
            duration: Duration(milliseconds: 1000),
            )
          );
        },
      )
    );
  }
}
//MARK : Toast
//사용하기에 앞서 라이브러리를 등록 해야합니다. Yami 파일에서 등록합니다.
class MyToastMessnger extends StatelessWidget {
  const MyToastMessnger({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text('Toast'),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue)
        ),
        onPressed: (){flutterToast();},
      )
    );
  }
}

void flutterToast(){
  Fluttertoast.showToast(
    msg: 'flutter',
    gravity: ToastGravity.BOTTOM, //토스트 메시지의 위치
    backgroundColor: Colors.redAccent,
    fontSize: 20.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_LONG

  );
}
//MARK : Container
class ContainerWidget extends StatelessWidget {
  const ContainerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: Text('dd'),
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 10
          ),
          padding: EdgeInsets.all(20),
        ),
      )

    );
  }
}

//MARK : Column & Row 세로 & 가로
class ColumnRowWidget extends StatelessWidget {
  const ColumnRowWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Container(
               width: 100,
               height: 100,
               color: Colors.red,
               child: Text('Container 1')
             ),
             Container(
               width: 100,
               height: 100,
               color: Colors.blue,
               child: Text('Container 2')
             ),
             Container(
               width: 100,
               height: 100,
               color: Colors.green,
               child: Text('Container 3')
             ),
            ],
          ),
        ),
      ),
      
    );
  }
}

//MARK : Navigator
class NavigatorTutorial extends StatelessWidget {
  const NavigatorTutorial({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: TextButton(
         child: Text('Go to Second Page'),
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (_) => SecondPage()));
         },
       ),
       )
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
     body: Center(
       child: TextButton(
         child: Text('Go to Fitst Page'),
         onPressed: (){
           Navigator.pop(ctx);
         },
       ),
       )
    );
  }
}

