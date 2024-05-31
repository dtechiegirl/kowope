import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kowope/features/login/bloc/login_state.dart';
import 'package:kowope/features/login/repository/login_repository.dart';

class LoginBloc extends Cubit<LoginState>{
  LoginBloc(): super(LoginState.empty);

  LoginRepository loginRepository = LoginRepository();

  void reset() async{
    emit(LoginState.empty);
  }
  void resetStatusToInital() async{
    emit(state.copyWith(loginStatus: LoginStatus.Initial));
  }
  void logout() async{
     await FirebaseAuth.instance.signOut();
  }
  void login(String emailAddress, String Password) async{
     emit(state.copyWith(
      loginStatus: LoginStatus.Processing
    ));
    try{
      await loginRepository.loginUser(email: emailAddress, password: Password);
      emit(state.copyWith(loginStatus: LoginStatus.Successful));
   // await loginRepository.loginUser(email: emailAddress, password: Password)
    }catch(e,s){
      if (kDebugMode) {
        print(e);
      }
      emit(state.copyWith(loginStatus: LoginStatus.Error));
    }
  }
  void setEmailAddress(String email){
    var newState = state.copyWith(
      emailAddress: email
    );
    emit(newState);
  }
  void setPassword(String password){
    emit(state.copyWith(password: password));
  }
  void onSubmit() async{
    if (_isUserInputValid()){
      emit(state.copyWith(loginStatus: LoginStatus.Processing));
      try{
       await  loginRepository.loginUser(email: state.emailAddress, password: state.password);
      emit(state.copyWith(loginStatus: LoginStatus.Successful));
      }catch(e,s){
        if (kDebugMode) {
          print(e);
        }
        emit(state.copyWith(loginStatus: LoginStatus.Error));

      }


    }
  }
    bool _isUserInputValid() {
      String errorMessage = "";
       if (state.emailAddress.isEmpty) {
        // errorMessage = "Email cannot be empty";
         emit(state.copyWith(loginStatus: LoginStatus.InvaildEMailAddress));
          return false;
       } else if (state.password.isEmpty || state.password.length < 8) {
         emit(state.copyWith(loginStatus: LoginStatus.InvalidPassword));
         return false;
       }

      return true;
    }
  }

