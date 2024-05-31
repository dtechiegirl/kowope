import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kowope/features/home/widgets/heading_text_widget.dart';
import 'package:kowope/features/savings/widgets/strict_savings_items_widget.dart';

class StrictSavingsSection extends StatelessWidget {
  const StrictSavingsSection({super.key});
  final String houseMoney = 'House Money\u1d40\u1d39';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header_text(title: "Strict Savings"),
          SizedBox(
            height: 370,
            child: GridView.count(
              // padding: EdgeInsets.all,
              crossAxisSpacing: 8,
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              // shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),

              children: [
                // strict_savings_items_widget(title: '', subtitle: '',)
                strict_savings_items_widget(title: "SETUP", subtitle: "PiggyBank", text: "Automatic daily, weekly or monthly return", color: Colors.blue, bgcolor: Colors.blue.shade700, subtitlecolor: Colors.blue.shade800, containerbg: Colors.blue.shade100,),
                strict_savings_items_widget(title: "LOCK MONEY", subtitle: "SafeLock", text: "Lock funds to avoid temptations", color: Colors.blue.shade400, bgcolor: Colors.blue.shade400, subtitlecolor: Colors.blue.shade400, containerbg: Colors.blue.shade50,),
                strict_savings_items_widget(title: "Target Savings", subtitle: "NEW GOAL", text: "Smash your savings goal faster", color: Colors.green, bgcolor: Colors.green, subtitlecolor: Colors.green, containerbg: Colors.green.shade50,),
                strict_savings_items_widget(title: "ADD MONEY", subtitle: houseMoney, text: "Save for your housing", color: Colors.deepOrange.shade300, bgcolor: Colors.deepOrange, subtitlecolor: Colors.deepOrange, containerbg: Colors.orange.shade50,)
              ],
            ),
          )
        ],
      ),
    );
  }
}

