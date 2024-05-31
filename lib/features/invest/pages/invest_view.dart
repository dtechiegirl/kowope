import 'package:flutter/material.dart';
import 'package:kowope/features/home/widgets/vetted_opportunities_section.dart';
import 'package:kowope/features/invest/widgets/invest_details_card.dart';
import 'package:kowope/features/invest/widgets/invest_tab_section.dart';

class InvestView extends StatelessWidget {
  const InvestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Investments",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline_rounded))
        ],
      ),
      body: ListView(
        children: [
            Container(
              padding: EdgeInsets.all(10),
                child: InvestDetailsCard()),
          Divider(thickness: 1, color: Colors.grey.shade300,),
          VettedOpportunities(),
          InvestTabSection()
        ],
      ),
    );
  }
}
