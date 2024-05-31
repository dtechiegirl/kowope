import 'package:flutter/material.dart';

class AccountOptionsSection extends StatelessWidget {
  const AccountOptionsSection({
    super.key, required this.title, required this.icon,
  });

  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(50)
            // color: Colors.
          ),
          child: icon,
        ),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}