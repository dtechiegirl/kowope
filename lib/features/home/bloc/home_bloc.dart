import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:kowope/features/account/models/user.dart';
import 'package:kowope/features/account/repository/account_repository.dart';
import 'package:kowope/features/home/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomeBloc extends Cubit<HomeState> {
  HomeBloc(): super(HomeState());

  AccountRepository accountRepository = AccountRepository();

  void updateTabIndex(int newIndex)async{
    emit(state.copyWith(tabIndex: newIndex));
  }
  void hideTodoList()async{
    emit(state.copyWith(hideTodo: true));
  }
  void loadUserDetails() async{
    try{
      // String email = FirebaseAuth.instance.currentUser!.email;
    Persons? person =  await accountRepository.getUserDetails();
    // print(person);
    if(person != null){
      emit(state.copyWith(person: person));
    }
    }catch(e){
      if (kDebugMode) {
        print(e);
      }
    }
  }
}