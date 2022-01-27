import 'package:flutter/material.dart';
import 'package:learn_flutter/AnimationList/CardListCell.dart';

class AnimationList extends StatefulWidget {
  const AnimationList({ Key? key }) : super(key: key);

  @override
  _AnimationListState createState() => _AnimationListState();
}

class _AnimationListState extends State<AnimationList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('애니메이션 리스트'),
        actions: [
          IconButton(
            onPressed: () {},
             icon: Icon(Icons.add_circle), color: Colors.white,),
              IconButton(
            onPressed: () {},
             icon: Icon(Icons.remove_circle), color: Colors.white,)
        ],
      ),
      body: AnimatedList(
        itemBuilder: _buildItem,
        initialItemCount: 5,
      ),
    );
  }
  Widget _buildItem (BuildContext context, int index, Animation<double> animation){
          return CardItem(item: index);
}

}