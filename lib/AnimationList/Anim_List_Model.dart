import 'package:flutter/material.dart';
import 'package:learn_flutter/AnimationList/CardListCell.dart';

//타입을 안정할떄 class ListModel<E> 이렇게 적으면 됨
class ListModel<E> {
  final List<E> _items;
//상태를 업데이트할 키 지정 (옵저버?)
  final GlobalKey<AnimatedListState> listKey;
  AnimatedListState get _animatedList => listKey.currentState!;
// null 방지
//List 오브젝트는 Iterable을 상속 받는 오브젝트 입니다.
  ListModel({required Iterable<E> initialItems, required this.listKey})
   : assert(initialItems != null,),//컴파일 타임에 item이 전달이 됬는지 안됬는지 알기 위해 추가
    assert(listKey != null),
  _items = List<E>.from(initialItems ?? <E>[]);

  //기능 생성

  //item 추가
  void insert(int index, E item) {
    _items.insert(index, item);
    _animatedList.insertItem(index);
    print('$index 에 새로운 항목이 추가되었습니다.');
  }
  //item 제거
  E removeAt(int index) {
    final removedItem = _items.removeAt(index);
    if (removedItem != null) {
      _animatedList.removeItem(index, (BuildContext context, Animation<double> animation){
        return CardItem(item: removedItem as int, onTap: (){}, selected: false, animation: animation);
      });
    }
    return removedItem;
  }
  //길이 알아보기
  int get length => _items.length;

  //전달받은 아이템을 배열에 추가
  //operator를 이용해 index 값을 받아와서 _item[index]에서 아이템을 받아옵니다.
  //ex) 3 index 전달  _items 배열의 [3] 을 받아옵니다.
  E operator [](int index) => _items[index];

  //indexOf 함수를 이용해 아이템의 index 위치를 찾습니다.
  int indexOf(E item) => _items.indexOf(item);
}