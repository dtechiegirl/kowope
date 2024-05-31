import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kowope/features/account/widgets/account_options_section.dart';
import 'package:kowope/features/account/widgets/account_toggles.dart';
import 'package:kowope/features/account/widgets/bank_details.dart';
import 'package:kowope/features/home/bloc/home_bloc.dart';
import 'package:kowope/features/login/bloc/login_bloc.dart';
import 'package:kowope/features/login/login_page.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = context.read<HomeBloc>();

    var homestate = context.watch<HomeBloc>().state;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Account,",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // fontSize: 12,
                      color: Colors.grey.shade500),
                ),
                Text(
                  "${homestate.person?.fullName}",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.purple,
                  size: 50,
                ))
          ],
        ),
      ),
      body: ListView(
        children: [
          account_toggles(),
          BankDetails(),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              
              children: [
                AccountOptionsSection(title: "Today's Rate", icon: Icon(Icons.percent_rounded),),
                Divider(height: 2,),
                AccountOptionsSection(title: "My Account Settings", icon: Icon(Icons.settings),),
                Divider(height: 2,),
                AccountOptionsSection(title: "Generate Account Statement", icon: Icon(Icons.settings),),
                Divider(height: 2,),
                AccountOptionsSection(title: "Enable Dark Mode", icon: Icon(Icons.arrow_forward_ios),),
                Divider(height: 2,),
                AccountOptionsSection(title: "Self Help", icon: Icon(Icons.info_outline_rounded),),
                Divider(height: 2,),
                AccountOptionsSection(title: "Security", icon: Icon(Icons.lock),),
                // Divider(height: 2,),
                Divider(color: Colors.grey.shade300,),
                ListTile(
                  leading: Icon(Icons.logout,color: Colors.red.shade700,),
                  title: Text(
                    "Log Out",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red.shade700,
                    ),
                  ),
                  onTap: () {
                    context.read<LoginBloc>().logout();
                    Navigator.pushReplacement(context, LoginPage.route() );
                    // context.read<LoginBloc>().logout();
                    // Navigator.pushReplacement(context, LoginPage.route(),);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


