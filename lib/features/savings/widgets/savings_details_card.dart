import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kowope/features/savings/pages/quick_save_page.dart';
import 'package:kowope/utils.dart';

final format = NumberFormat.simpleCurrency(name: "NGN");
class SavingsDetailsCard extends StatelessWidget {
  const SavingsDetailsCard({
    super.key,  required this.topRightWidget, required this.balance, required this.onClick,
  });

  final Widget topRightWidget;
  final String balance;
  final Function() onClick;
  // final Function()?
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(15)),
          padding: EdgeInsets.all(15),
          height: 150,
          child: Stack(children: [
            // Text("How are you today")),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return QuickSavePage();
                })
                );
              },
              icon: Icon(Icons.add),
              label: Text("Quick Save"),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black87),
            ),
            // Chip(label: Text("Quick Save",), shape: StadiumBorder(),),

            Positioned(
              top: 0,
              right: 0,
              child: topRightWidget
            ),

            Positioned(
              bottom: 0,
              left: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("My Savings", style: TextStyle(color: Colors.white),),
                  Text(
                    "${getNaira()}$balance",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            )
          ])),
    );
  }
}
