import 'package:flutter/material.dart';
import 'package:kowope/gen/assets.gen.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({
    super.key,
    required this.title,
    required this.progress,
    required this.asset,
    this.onPressed,
    required this.text,
  });

  final String title;
  final String text;
  final double progress;
  final Image asset;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 10),
      // color: Colors.white,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Row(
            children: [
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                width: 5,
              ),
             asset
            ],
          ),
          LinearProgressIndicator(
            value: progress,
            color: Colors.deepPurple,
            // backgroundColor: Colors.purple,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios),
            style: IconButton.styleFrom(
              backgroundColor: Colors.grey.shade200,
              // maximumSize: Size()
            ),
          )
        ],
      ),
    );
  }
}
