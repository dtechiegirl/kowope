import 'package:flutter/material.dart';
import 'package:kowope/gen/assets.gen.dart';

class top_savings_items extends StatelessWidget {
  const top_savings_items({
    super.key,
    required this.assets,
    required this.title,
    required this.subtitle,
    required this.text,
  });

  final Image assets;
  final String title;
  final String subtitle;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: assets,
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle, style: TextStyle(
        color: Colors.black38
      ),
      ),
      trailing: SizedBox(
        height: 35,
        width: 90,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(text, style: TextStyle(
            color: Colors.white
          ),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
        ),
      ),
      contentPadding: EdgeInsets.zero,
    );
  }
}
