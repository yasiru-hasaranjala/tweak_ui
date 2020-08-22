import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tweak/components/item_object.dart';
import 'package:tweak/widgets/service_card_small.dart';

class CardRowSmall extends StatefulWidget {

  final List<ItemObject> cardRow;
  CardRowSmall(this.cardRow);

  @override
  _CardRowSmallState createState() => _CardRowSmallState();
}

class _CardRowSmallState extends State<CardRowSmall> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.cardRow.length,
              itemBuilder: (BuildContext context, int i) {
                return Transform.scale(
                  scale: 1,
                  child: ServiceCardSmall(widget.cardRow[i].title,widget.cardRow[i].path),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

}

