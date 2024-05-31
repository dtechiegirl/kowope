import 'package:flutter/material.dart';

class header_text extends StatelessWidget {
  const header_text({
    super.key, required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 16, color: Colors.black38),
    );
  }
}
