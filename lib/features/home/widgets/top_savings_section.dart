import 'package:flutter/material.dart';
import 'package:kowope/features/home/widgets/heading_text_widget.dart';
import 'package:kowope/features/home/widgets/top_savings_items_widget.dart';
import 'package:kowope/gen/assets.gen.dart';

class top_savings_section extends StatelessWidget {
  const top_savings_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 13),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          header_text(title: "Top Savings"),
          top_savings_items(
            assets:
                Assets.materialSymbolsShieldLockOutlineSharp.image(height: 25),
            title: 'PiggyBank',
            subtitle: 'Auto save: Daily weekly or\n monthly',
            text: 'SAVE',
          ),
          top_savings_items(
              assets: Assets.thumbsUp
                  .image(height: 25),
              title: "SafeLock",
              subtitle: "Lock funds to avoid \n temptations",
              text: "LOCK"),
          top_savings_items(
              assets: Assets.wallet.image(height: 25),
              title: "Flex Naira",
              subtitle: "Your emergency funds with\n interest",
              text: "FUND")
        ],
      ),
    );
  }
}
