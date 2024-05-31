import 'package:flutter/material.dart';
import 'package:kowope/utils.dart';

class InvestDetailsCard extends StatelessWidget {
  const InvestDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(10)
      ),
      padding:EdgeInsets.all(10),
      // margin: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Chip(label: Text("Up to 35% return"), shape: StadiumBorder(),),
          SizedBox(
            height: 20,
          ),
          Text("Total Investemnt", style: TextStyle(
            color: Colors.white
          ),
          ),
          Text("${getNaira()} 0", style: TextStyle(
              color: Colors.white,
              fontSize: 25
          ),
          ),

        ],
      ),
    );
  }
}
