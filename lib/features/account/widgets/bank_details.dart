import 'package:flutter/material.dart';

class BankDetails extends StatelessWidget {
  const BankDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.yellow
          borderRadius: BorderRadius.circular(20)
      ),
      height: 100,
      padding: EdgeInsets.all(16),
      // color: ,
      child: GridView(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 70,
            crossAxisSpacing: 10
        ),
        // crossAxisCount: 2,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: ListTile(
              title: Text("0233498134"),
              subtitle: Text("Gt Bank"),
              trailing: Icon(Icons.arrow_forward_ios),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: ListTile(
              title: Text("0"),
              subtitle: Text("Piggy Points"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],

      ),
    );
  }
}