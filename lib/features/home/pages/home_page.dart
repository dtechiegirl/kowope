import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kowope/features/account/pages/account_view.dart';
import 'package:kowope/features/home/bloc/home_bloc.dart';
import 'package:kowope/features/home/bloc/home_state.dart';
import 'package:kowope/features/home/pages/home_view.dart';
// import 'package:kowope/home_view.dart';
import 'package:kowope/features/invest/pages/invest_view.dart';
import 'package:kowope/features/savings/pages/savings_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
 static route() => MaterialPageRoute(builder: (context){
    return HomePage();
  });
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listOfPages = [
    HomeView(),
    SavingsView(),
    InvestView(),
    AccountView(),
  ];

  @override
  void initState(){
    super.initState();
    context.read<HomeBloc>().loadUserDetails();
  }
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = context.watch<HomeBloc>();
    HomeState homeState = homeBloc.state;
   int selectedIndex = homeState.tabIndex;
    return  Scaffold(
      // appBar: AppBar(
      //   title: Text("Kowope"),
      // ),
      body: IndexedStack(
        children: listOfPages,
        index: selectedIndex,
      ),

      // floatingActionButton: FloatingActionButton(
      //   shape: CircleBorder(),
      //   child: Icon(Icons.add),
      //   onPressed: (){},
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:  selectedIndex,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Colors.deepPurple,
        onTap: (value){
          // setState(() {
          //   selectedIndex = value;
          // });
          homeBloc.updateTabIndex(value);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, ), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.savings,), label: "Savings"),
          BottomNavigationBarItem(icon: Icon(Icons.rocket_launch), label: "Invest"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Account"),
        ],
      ),

    );
  }
}
