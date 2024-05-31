import 'package:flutter/material.dart';
import 'package:kowope/gen/assets.gen.dart';

class vetted_opportunities_items_widget extends StatelessWidget {
  const vetted_opportunities_items_widget({
    super.key,
    required this.asset,
    required this.text,
  });
  final Image asset;
  final String text;
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          SizedBox(height: 150, child: asset),
          Text(
            "CORPORATE DEBT N...",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          // SizedBox(width: 5,),
          Text(
            text,
            style: TextStyle(color: Colors.black38),
          )
        ],
      ),
    );
  }
}



