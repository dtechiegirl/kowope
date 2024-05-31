
import 'package:flutter/material.dart';

class account_toggles extends StatelessWidget {
  const account_toggles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200,
      child: Column(
        children: [
          ListTile(

            title: Text("Enable Fingerprint and Face Id"),
            trailing: Switch(value: true, onChanged: (value){}, activeColor: Colors.deepPurpleAccent.shade200,),
            // subtitle: Text("jjj"),
          ),
          ListTile(
            title: Text("how dashboard account balances"),
            trailing: Switch(value: true, onChanged: (value){}, activeColor: Colors.deepPurpleAccent.shade200,),
            // subtitle: Text("jjj"),
          ),
          ListTile(
            title: Text("Interest enabled on savings"),
            trailing: Switch(value: false, onChanged: (value){}, activeColor: Colors.deepPurpleAccent.shade200, inactiveTrackColor: Colors.deepPurpleAccent.shade200, ),

            // subtitle: Text("jjj"),
          ),
        ],
      ),
    );
  }
}