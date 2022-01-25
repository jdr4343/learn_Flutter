import 'dart:js';

import 'package:english_words/english_words.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'bloc/Bloc.dart';

class SaveWordList extends StatefulWidget {
//RandomList의 saved List값을 받아와서 saved에 저장
 
  @override
  State<SaveWordList> createState() => _SaveWordListState();
}

class _SaveWordListState extends State<SaveWordList> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved'),
      ),
      body: _savedList(),
    );
  }

  Widget _savedList() {
    return StreamBuilder<Set<WordPair>>(
      stream: bloc.savedStream,
      builder: (context, snapshot) {
        //nullSafety
        var saved = Set<WordPair>();
        if(snapshot.hasData) {
          saved.addAll(snapshot.data!);
        } else {
          bloc.addCurrentSaved;
        }
        

        return ListView.builder(itemBuilder: (content, index) {
          if (index.isOdd) {
            return Divider();
          }
          var realIndex = index ~/ 2;
          
          //Set 타입에 index 보내기위해 list로 변경후 보내기
          return _buildRow(saved.toList() [realIndex]);
        },
        //ListView 앞으로 올 타일의 숫자 지정 cellForRow랑 비슷한 개념인듯 싶다.
        itemCount: saved.length*2,
        );
      }
    );

    
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(pair.asPascalCase, textScaleFactor: 1.5,),
      onTap: () {
        //이제 보니 setState는 tableView.reloadData 와 비슷한거 같다.
       bloc.addToOrRemoveFromSavedList(pair);
       
      },
    );
    }
}