import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kowope/features/Signup/bloc/signup_bloc.dart';
import 'package:kowope/features/Signup/bloc/signup_state.dart';
import 'package:kowope/features/home/pages/home_page.dart';
import 'package:kowope/features/home/widgets/heading_text_widget.dart';
import 'package:kowope/features/login/login_page.dart';
import 'package:kowope/features/login/widgets/textfields_widgets.dart';
import 'package:kowope/gen/assets.gen.dart';

class SignuPage extends StatefulWidget {
  const SignuPage({super.key});

  @override
  State<SignuPage> createState() => _SignuPageState();
}

class _SignuPageState extends State<SignuPage> {
  String fullName = "";
  String emailAddress = "";
  String password = "";

  @override
  Widget build(BuildContext context) {


    SignupBloc bloc = context.watch<SignupBloc>();
    SignupState state = bloc.state;

    switch(state.signupStatus){
      case SignupStatus.Initial:
        break;
      case SignupStatus.Processing:
      // TODO: Handle this case.
        break;
      case SignupStatus.Successful:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

          Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return HomePage();
              },
              )
          );
          bloc.reset;
        });
        break;
      case SignupStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(SnackBar(content: Text("An error occured")));
        });
        break;
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(25),
          children: [
            Row(
              children: [
                Text(
                  "Let's get started",
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
            header_text(title: "Register to start saving and investing with"),
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
                  header_text(title: "FullName"),
                  TextFormFields(
                    label: 'e.g John Doe',
                    onChanged: (String value) {
                      fullName = value;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  header_text(title: "Email Address"),
                  TextFormFields(
                    label: 'e.g johndoe@gmail.com',
                    onChanged: (String value) {
                      emailAddress = value;
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
                      password = value;
                    },
                    isPassword: true,
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
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                // topRight: Radius.circular(16),
                                bottomRight: Radius.circular(30)),
                          ),
                        ),
                        onPressed: state.signupStatus == SignupStatus.Processing ? null : () {
                          if (_isUserInputValid()) {
                            bloc.registerUser(
                                fullName: fullName,
                                emailAddress: emailAddress,
                                password: password);
                          }
                        },
                        child: Text(
                          "Sign-Up",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return LoginPage();
                            }));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.black54),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _isUserInputValid() {
    String errorMessage = "";
    if (fullName.isEmpty) {
      errorMessage = "Fullname cannot be empty";
    } else if (emailAddress.isEmpty) {
      errorMessage = "Email cannot be empty";
    } else if (password.isEmpty || password.length < 8) {
      errorMessage = "Password must not be less that 8";
    }
    if (errorMessage.isNotEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(errorMessage)));
      return false;
    }

    return true;
  }
}
