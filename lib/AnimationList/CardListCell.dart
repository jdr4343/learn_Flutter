import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final int item;
  //옵저버 ? 콜백함수 만들기
  final VoidCallback onTap;
  final bool selected;

  //애니메이션 생성
  final Animation<double> animation;
const CardItem({ Key? key, required this.item, required this.onTap,
 required this.selected, required this.animation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      //사이즈가 작아졌다가 커졌다 하는 애니메이션을 생성 하겠습니다.
      sizeFactor: animation,
      child: Card(
        color: Colors.primaries[item % Colors.primaries.length],
        child: ListTile(
              leading: Icon(Icons.star),
              title: Text('번호: $item',textScaleFactor: 3,),
              subtitle: Text('number 1'),
              trailing: Icon(Icons.favorite),
              selected: selected,
              onTap: onTap,
              ),
      ),
    );
  }
}