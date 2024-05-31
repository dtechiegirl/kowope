import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kowope/features/Signup/signup_page.dart';
import 'package:kowope/features/home/pages/home_page.dart';
import 'package:kowope/features/home/widgets/heading_text_widget.dart';
import 'package:kowope/features/login/bloc/login_bloc.dart';
import 'package:kowope/features/login/bloc/login_state.dart';
import 'package:kowope/features/login/widgets/textfields_widgets.dart';
import 'package:kowope/gen/assets.gen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static route() => MaterialPageRoute(builder: (context){
    return LoginPage();
  });
  @override
  Widget build(BuildContext context) {
    var bloc = context.watch<LoginBloc>();
    var state = bloc.state;

    switch(state.loginStatus){

      case LoginStatus.Initial:
        // TODO: Handle this case.
        break;
      case LoginStatus.Processing:
        // TODO: Handle this case.
        break;
      case LoginStatus.Successful:

      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) {
              return HomePage();
            },
            )
        );
        bloc.reset();
      });
      break;
      case LoginStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(SnackBar(content: Text("An error occured")));
          bloc.resetStatusToInital();
        });
        break;
      case LoginStatus.InvaildEMailAddress:
        // TODO: Handle this case.

        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(SnackBar(content: Text("You entered an invalid email or password")));
          bloc.resetStatusToInital();
        });
        break;
      case LoginStatus.InvalidPassword:
        // TODO: Handle this case.

        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(SnackBar(content: Text("You entered a wrong password or email")));
        bloc.resetStatusToInital();
        });
        break;
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios),),
      ),
      body: ListView(
        padding: EdgeInsets.all(25),
        children: [
          Row(
            children: [
              Text(
                "Welcome Back!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Assets.cheers.image(height: 30)
            ],
          ),
          // Text("Register to start saving and investing with")
          // Text("piggyvest")
          header_text(title: "Login to start saving and investing with"),
          Row(
            children: [
              Text(
                "PiggyVest",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black38),
              ),
              header_text(title: " today!")
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header_text(title: "Email Address"),
                TextFormFields(
                  label: 'e.g johndoe@gmail.com',
                  onChanged: (String value) {
                    bloc.setEmailAddress(value);
                  },
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 30,
                ),
                header_text(title: " Password"),
                TextFormFields(
                  label: '',
                  onChanged: (String value) {
                    bloc.setPassword(value);
                  },
                  isPassword : true,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  // alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue.shade400,
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              // topRight: Radius.circular(16),
                              bottomRight: Radius.circular(30)),
                        ),
                      ),
                      onPressed: () {
                        bloc.onSubmit();
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            if( state.loginStatus == LoginStatus.Processing)
                              CircularProgressIndicator(),
                          Text(
                            "Log-In",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )),
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New User?"),
                    TextButton(
                        onPressed: () {

                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return SignuPage();
                            },
                          ));
                        },
                        child: Text(
                          "Create Account",
                          style: TextStyle(color: Colors.black54),
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
