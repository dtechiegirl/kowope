import 'package:flutter/material.dart';
import 'package:kowope/features/home/widgets/heading_text_widget.dart';
import 'package:kowope/features/savings/widgets/strict_savings_items_widget.dart';

class FlexibleSavingsOption extends StatelessWidget {
  const FlexibleSavingsOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header_text(title: "Flexible Savings"),
          SizedBox(
            height: 200,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                strict_savings_items_widget(title: '\$100', subtitle: "Flex Dollars", text: "Save in dollars, earn interest", color: Colors.grey.shade700, bgcolor: Colors.black, subtitlecolor: Colors.black, containerbg: Colors.grey.shade300),
                strict_savings_items_widget(title: '\$100', subtitle: "Flex Dollars", text: "Save in dollars, earn interest", color: Colors.pink, bgcolor: Colors.pink.shade400, subtitlecolor: Colors.pink.shade300, containerbg: Colors.pink.shade50),
                // strict_savings_items_widget(title: '\$100', subtitle: "Flex Dollars", text: "Save in dollars, ear interest", color: Colors.grey, bgcolor: Colors.lightGreenAccent, subtitlecolor: Colors.black, containerbg: Colors.grey),
                // strict_savings_items_widget(title: '\$100', subtitle: "Flex Dollars", text: "Save in dollars, ear interest", color: Colors.grey, bgcolor: Colors.lightGreenAccent, subtitlecolor: Colors.black, containerbg: Colors.grey)
              ],
            ),
          )
        ],
      ),
    );
  }
}
