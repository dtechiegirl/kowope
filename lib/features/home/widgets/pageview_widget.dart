import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kowope/features/home/bloc/home_bloc.dart';
import 'package:kowope/features/home/bloc/home_state.dart';
import 'package:kowope/features/savings/widgets/savings_details_card.dart';
import 'package:kowope/features/invest/widgets/invest_details_card.dart';
class page_view_widget extends StatefulWidget {
  const page_view_widget({
    super.key,
  });

  @override
  State<page_view_widget> createState() => _page_view_widgetState();
}

class _page_view_widgetState extends State<page_view_widget> {
  @override
  Widget build(BuildContext context) {

    HomeBloc homeBloc = context.read<HomeBloc>();

    var homestate = context.watch<HomeBloc>().state;
    return DefaultTabController(
      length: 2,
      child: Builder(
        builder: (context) {
          return Column(
            children: [
              // pagview_widget(),
              Column(
                children: [
                  SizedBox(
                    height: 150,
                    child: PageView(
                      onPageChanged: (index){
                        setState(() {
                          DefaultTabController.of(context).index = index;
                        });
                      },
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SavingsDetailsCard(

                            onClick: () {
                              homeBloc.updateTabIndex(1);
                            },
                            topRightWidget: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.min,
                                mainAxisSize: MainAxisSize.min,
                                children: [Text("View Savings"), Icon(Icons.arrow_forward)],
                              ),
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                                  foregroundColor: Colors.deepPurple),
                            ), balance: "${homestate.person?.balance}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: InvestDetailsCard(),
                        )

                        // InvestDetailsCard()
                      ],
                    ),
                  ),
                ],
              ),
              TabPageSelector(
                selectedColor: Colors.deepPurpleAccent,
                color:  Colors.white,
              ),
            ],
          );
        }
      ),
    );
  }
}