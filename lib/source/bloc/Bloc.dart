import 'package:english_words/english_words.dart';
//Stream을 사용하기위해 라이브러리 적용
import 'dart:async';
//블록 패턴 적용
//어떠한 파일에 데이터를 저장 하고 필요할때 사용 swift에서 model파일의 역활을 하는것 같음
class Bloc {
  Set<WordPair> saved = Set<WordPair>();

  //StreamConroller 생성 후 종료 함수 생성(필수 메서드 생성) 종료 함수를 만들어주지 안을경우 메모리 락이 걸릴수 있음
  //broadcast : Stream에서 snabshot을 보내줘야 할때 여러개를 한꺼번에 보내줄수 있게 해줍니다.
  final _savedController = StreamController<Set<WordPair>>.broadcast();

  //종료 함수
  closer() {
    _savedController.close();
  }

  //컨트롤러를 사용해서 Stream을 가져오기 위해서 함수 생성
  get savedStream => _savedController.stream;

  get addCurrentSaved => _savedController.sink.add(saved);



  //사용자의 인터랙션에 따라 데이터 변경하기 위해 Controller에 변경된 데이터 전달
  addToOrRemoveFromSavedList(WordPair item) {
    if (saved.contains(item)) {
      saved.remove(item);
    } else {
      saved.add(item);
    }
    //데이터가 변경되었음을 Stream에게 전달 // 변경된 데이터를 보내줄때 sink를 씀
    _savedController.sink.add(saved);
  }
}


//bloc 접근을 위해 인스턴스 생성
var bloc = Bloc();