import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class suggestion_widget extends StatelessWidget {
  const suggestion_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Assets.img1.image(),
          SizedBox(width: 8,),
          Assets.img2.image(),
          SizedBox(width: 8,),
          Assets.img3.image()
        ],
      ),
    );
  }
}