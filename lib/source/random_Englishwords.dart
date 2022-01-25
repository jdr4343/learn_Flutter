import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:learn_flutter/source/bloc/Bloc.dart';
import 'saveWordList.dart';
import 'bloc/Bloc.dart';
//MARK: 더 코딩 파파 - 플러터 입문 강좌 - 고급스킬 포함

class RandomList extends StatefulWidget {
  //상태가 변할때마다 상태를 바꿔주는 StatefulWidget
  const RandomList({ Key? key }) : super(key: key);

  @override
  _RandomListState createState() => _RandomListState();
}

class _RandomListState extends State<RandomList> {
  //저장 공간 (List) 타입 <WoedPair> 만들어주기
  final _suggestions = <WordPair>[];
  //Set : 동일한 값의 오브젝트가 들어갈수 없음
  //final _saved = Set<WordPair>();
  
  

  @override
  Widget build(BuildContext context) {
    final randomWord = WordPair.random();

    return Scaffold(
      appBar: AppBar(
        title: Text('Naming App'),
        actions: [ 
          IconButton(icon: Icon(Icons.list), onPressed: () {
            Navigator.push(context,
            //페이지 이동과 동시에 데이터 전달 이건 혁신이야..
             MaterialPageRoute(builder: (context) => SaveWordList()));
          },
          )],
        ),
        body: _buildList()
    );
  }

  //Widget을 나눠서 코드를 깨끗하게 extension이랑 비슷하게 코드를 따로 때어놀수 있는 기능 같음
  Widget _buildList() {
    //Stream 사용
    return  StreamBuilder<Set<WordPair>>(
      stream: bloc.savedStream,
      //snabshot이 도착 할떄마다 뷰가 리프레시 됨 
      builder: (context, snapshot) {

        //null Safety
         var saved = Set<WordPair>();
        if(snapshot.hasData) {
          saved.addAll(snapshot.data!);
        } else {
          bloc.addCurrentSaved;
        }

        return ListView.builder(itemBuilder: (context, index) {
              //flutter에서 ListView는 선도 index로 전달됨.. 즉 0,2,4,6,8...은 실제 index(real index)이고
              //1,3,5,7,9...는 밑줄 혹은 구분선 을 그려주거나 세부 사항을 기입할수 있음
              if(index.isOdd) {
                // ListViewCell의 index가 홀수라면 밑줄을 그어 주세요
                return Divider();
              }
              //0을 포함한 짝수의 index에는 텍스트를 보여주세요.
              var realIndex = index ~/ 2;
    
              //realIndex의 갯수가 _suggestions의 갯수보다 크거나 같을 경우 WordPairs의 
              //10개의 항목을 _suggestions에 추가 해주세요.
              if (realIndex >= _suggestions.length) {
                _suggestions.addAll(generateWordPairs().take(10));
              }
              //[]는 색인 번호 즉 index의 숫자를 기입
              //스냅샷 데이터 전달 즉 Stream을 통해 saved bloc data를 전달
            
              return _buildWordsText(saved ,_suggestions[realIndex]);
            }
            );
      }
    );
      
  }
  //WordPair 타입을 가진 pair 아규먼트를 Widget을 호출 할때 받아옴
  Widget _buildWordsText(Set<WordPair> saved,WordPair pair) {
    //null safety 값이 비지 않았을경우에만 유형 검사를 실시함
    final bool saveWords = saved == null? false : saved.contains(pair);
    return ListTile(
      title: Text(pair.asPascalCase,textScaleFactor: 1.5,),
      //saveWord?를 기입해서 불리언 값에 따라 Icon를 선택 하겠습니다.
      trailing: Icon(
        saveWords? Icons.favorite : Icons.favorite_border , 
      color:  Colors.pink[200],),
      onTap: (){
        //bloc에 데이터 전달
      bloc.addToOrRemoveFromSavedList(pair);
        }
    );
  }
}



