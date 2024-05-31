import 'package:flutter/material.dart';
import 'package:kowope/features/home/widgets/heading_text_widget.dart';
import 'package:kowope/gen/assets.gen.dart';

class RecentActivitues extends StatelessWidget {
  const RecentActivitues({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header_text(title: "Recent Activities"),
          SizedBox(height: 10,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Assets.group103.image(height: 80),
                Column(
                  children: [
                    Text("Just registered", style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    ),

                    header_text(title: "an hour ago"),
                    // Assets.frame54.image(height: 80)
                  ],
                ),
                Assets.frame54.image(height: 80)
              ],
            )
        ],
      ),
    );
  }
}
