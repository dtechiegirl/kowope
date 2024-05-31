import 'package:flutter/material.dart';
import 'package:kowope/features/savings/widgets/savings_details_card.dart';
import 'package:kowope/features/savings/widgets/flexible_savings_option.dart';
import 'package:kowope/features/savings/widgets/strict_savings_widget.dart';

class SavingsView extends StatelessWidget {
  const SavingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Savings"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.info_outline_rounded),
              color: Colors.black38,
            )
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            SavingsDetailsCard(

                topRightWidget: Chip(
                  label: Text("up to 10% returns", style: TextStyle(color: Colors.white),),
                  backgroundColor: Colors.black,
                  shape: StadiumBorder(),
                  // color: Colors.white70,
                ),
              balance: '24000', onClick: () {  },
            ),
            StrictSavingsSection(),
            FlexibleSavingsOption()
          ],
        ),
    );
  }
}
