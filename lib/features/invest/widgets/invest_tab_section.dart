import 'package:flutter/material.dart';

class InvestTabSection extends StatelessWidget {
  const InvestTabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            // TabBar(tabs: Tab(text: "Active",))
            TabBar(

              indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3,

                tabs: [

              Tab(text: "Active"),
              Tab(
                text: "Matured",
              )
            ]
            ),
            SizedBox(
              // height: MediaQuery.of(context).size.height,
              height: 400,
              child: TabBarView(children: [
                Container(
                  child: Text("Active Investment"),
                ),
                Container(
                  child: Text("Matured Investment"),
                ),
              ]),
            )
          ],
        ));
  }
}
