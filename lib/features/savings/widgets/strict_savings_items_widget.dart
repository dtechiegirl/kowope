import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class strict_savings_items_widget extends StatelessWidget {
  const strict_savings_items_widget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.text,
    required this.color,
    required this.bgcolor, required this.subtitlecolor, required this.containerbg,
  });

  final String title;
  final String subtitle;
  final String text;
  final Color color;
  final Color bgcolor;
  final Color subtitlecolor;
  final Color containerbg;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 50,
      width: 120,
      decoration: BoxDecoration(
          color: containerbg,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color, width: 2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.values,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            // children: [],

            children: [
              SizedBox(
                // width: 100,
                height: 30,
                  child: ElevatedButton(onPressed: () {}, child: Text(title, style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: bgcolor,),)),
            ],
          ),
          SizedBox(height: 20,),
          Text(
            subtitle,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: subtitlecolor),
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}
