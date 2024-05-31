import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kowope/gen/assets.gen.dart';

class ExploreInvestmentPage extends StatelessWidget {
  const ExploreInvestmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore Investment"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(15),
            // margin: EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Assets.pics2.image(height: 120),
                Expanded(
                  child: Column(
                    children: [
                      Text("Corporate Debt Not Series XXII", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),),
                      Text("10% return in 9 months"),
                      Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("\$500"),
                            Text("Per Unit")
                          ],
                        ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("625"),
                              Text("Investor")
                            ],
                          )
                        ]
                      ),

                    ],
                  ),
                ),
                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 5)
                    ),
                    child: Text("Sold Out"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
