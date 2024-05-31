import 'package:flutter/material.dart';
import 'package:kowope/features/home/widgets/heading_text_widget.dart';
import 'package:kowope/features/savings/widgets/choose_a_wallet_section.dart';
import 'package:kowope/gen/assets.gen.dart';
import 'package:kowope/utils.dart';

class QuickSavePage extends StatefulWidget {
  const QuickSavePage({super.key});

  @override
  State<QuickSavePage> createState() => _QuickSavePageState();
}

class _QuickSavePageState extends State<QuickSavePage> {
  String amount = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: ListView(
        padding: EdgeInsets.all(16),

        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Assets.wallet.image(height: 70),
              Text("Quick Save", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
              ),
              Divider(),
              header_text(title: "Enter an amount",),
              TextField(
                onChanged: (value){
                  setState(() {
                    amount = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: "5000",
                  border: OutlineInputBorder(
                    // borderSide: BorderSide.none
                  ),
                    prefixText: "${getNaira()}",
                    // prefixText: Text("\$"), prefixIconColor: Colors.black
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),

            ],
          ),
          // Text("Choose a wallet to Top-Up"),
          amount.isEmpty ? Container(
            height: 16,
          ) :ChooseAWalletSection(),
          ElevatedButton(onPressed: (){}, child: Text("Save Now"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),)
        ],
      ),
    );
  }
}


