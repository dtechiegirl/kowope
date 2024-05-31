import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kowope/features/home/bloc/home_bloc.dart';
import 'package:kowope/features/home/widgets/heading_text_widget.dart';
import 'package:kowope/features/home/widgets/my_todo_section.dart';
import 'package:kowope/features/home/widgets/pageview_widget.dart';
import 'package:kowope/features/home/widgets/recent_activitites.dart';
import 'package:kowope/features/savings/widgets/savings_details_card.dart';
import 'package:kowope/features/home/widgets/top_savings_section.dart';
import 'package:kowope/features/home/widgets/vetted_opportunities_section.dart';
import 'package:kowope/features/invest/widgets/invest_details_card.dart';
import 'package:kowope/gen/assets.gen.dart';

import '../widgets/suggestion_widget.dart';
// import 'package:wtm_weather_app/gen/assets.gen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var homestate = context.watch<HomeBloc>().state;
    return Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Assets.img1.image()
              Text(
                "Hello, ${homestate.person?.fullName ?? "there"}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "Do more with your finances",
                    style: TextStyle(fontSize: 11),
                  ),
                  Assets.cheer.image(height: 20)
                ],
              )
            ],
          ),
          actions: [
            IconButton(
              color: Colors.deepPurple,
              onPressed: () {},
              icon: Icon(
                size: 50,
                Icons.account_circle,
              ),
            )
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            page_view_widget(),

            MyTodoSection(),
            top_savings_section(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header_text(
                    title: 'Suggestions for you',
                  ),
                  suggestion_widget(),
                ],
              ),
            ),
            VettedOpportunities(),
            RecentActivitues()
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   shape: CircleBorder(),
        //   child: Icon(Icons.add),
        //   onPressed: () {},
        // )
    );
  }
}



