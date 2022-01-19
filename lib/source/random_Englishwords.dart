import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//MARK: 더 코딩 파파 - 플러터 입문 강좌 - 고급스킬 포함

class RandomList extends StatefulWidget {
  //상태가 변할때마다 상태를 바꿔주는 StatefulWidget
  const RandomList({ Key? key }) : super(key: key);

  @override
  _RandomListState createState() => _RandomListState();
}

class _RandomListState extends State<RandomList> {
  @override
  Widget build(BuildContext context) {
    final randomWord = WordPair.random();

    return Scaffold(
      appBar: AppBar(
        title: Text('Naming App'),
        actions: [ 
          IconButton(icon: Icon(Icons.list), onPressed: () {},
          )],
        ),
        body: Center(
          child: Text(randomWord.asPascalCase, textScaleFactor: 1.5,),
        )
      
    );
  }
}



