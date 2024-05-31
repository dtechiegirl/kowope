import 'package:flutter/material.dart';
import 'package:kowope/features/home/widgets/heading_text_widget.dart';
import 'package:kowope/features/home/widgets/vetted_opportunities_items_widget.dart';
import 'package:kowope/features/invest/pages/explore_investment.dart';
import 'package:kowope/gen/assets.gen.dart';

class VettedOpportunities extends StatelessWidget {
  const VettedOpportunities({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              header_text(title: "Vetted Opportunities"),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ExploreInvestmentPage();
                    })
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        "Find More",
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                vetted_opportunities_items_widget(asset: Assets.pics1.image(), text: '10% . returns in 9 months',),
                vetted_opportunities_items_widget(asset: Assets.pics2.image(), text: "5.9% . returns in 6 months"),
                vetted_opportunities_items_widget(asset: Assets.pics3.image(), text: "10.4% . returns in 8 months"),
                vetted_opportunities_items_widget(asset: Assets.pics4.image(), text: "3.7% . returns in 3 months"),
                vetted_opportunities_items_widget(asset: Assets.pics5.image(), text: "11% . returns in 9 months"),
                vetted_opportunities_items_widget(asset: Assets.pics6.image(), text: "6.7% . returns in 6 months"),
                vetted_opportunities_items_widget(asset: Assets.pics7.image(), text: "11% . returns in 9 months")
              ],
            ),
          )
        ],
      ),
    );
  }
}

