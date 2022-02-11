import 'package:flutter/material.dart';
import 'package:learn_flutter/AnimationList/Anim_List_Model.dart';
import 'package:learn_flutter/AnimationList/CardListCell.dart';
import 'package:learn_flutter/AnimationList/Anim_List_Model.dart';

class AnimationList extends StatefulWidget {
  const AnimationList({ Key? key }) : super(key: key);

  @override
  _AnimationListState createState() => _AnimationListState();
}

class _AnimationListState extends State<AnimationList> {
  //상태가 변경 되었음을 알려주기 위해 생성 키는 모델에 연결 하였습니다.
  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  //만들어 놓은 ListModel 사용
   late ListModel<int>  _list;

   //선택된 item 저장
   late int _selectedItem;

   late int _addItem;

  //초기화 initiallizer 추가
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _list = ListModel<int>(
      initialItems: <int>[0,1,2],
      listKey: _listKey
    );
    _addItem = 4;
    _selectedItem = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('애니메이션 리스트'),
        actions: [
          IconButton(
            onPressed: () { _insert();},
             icon: Icon(Icons.add_circle), color: Colors.white,),
              IconButton(
            onPressed: () {_remove();},
             icon: Icon(Icons.remove_circle), color: Colors.white,)
        ],
      ),
      body: AnimatedList(
        key: _listKey,
        itemBuilder: _buildItem,
        initialItemCount: _list.length,
      ),
    );
  }
  //추가 기능 : 선택 되있는 항목이 있다면 그 자리에 추가 
  //없다면 마지막에 추가
  void _insert() {
    final int index = _selectedItem == 0 ? _list.length : _list.indexOf(_selectedItem+1);
    _list.insert(index, _addItem++);
    print("$index");
  }
  //삭제
  void _remove() {
    if (_selectedItem != 0) {
      _list.removeAt(_selectedItem);
      print("$_selectedItem");
      setState(() {
        _selectedItem = 0 ;
      });
    }
  }

  Widget _buildItem (BuildContext context, int index, Animation<double> animation){
    //listModel에서 만들어둔 Operator 사용
          return CardItem(item: _list[index], onTap: (){
            setState(() {
               //선택된 아이템이 -List배열의 index와 같냐고 물어보고 같으면 선택된 인덱스를 지워주고 아니라면 index
            //값을 선택된 index값을 지정해달라고 합니다.
          _selectedItem = (_selectedItem == _list[index] ? null : _list[index])!;
          print("$_list[$index]");
            }
            );
          },selected: _selectedItem == _list[index],
          animation: animation,);

}
  

}