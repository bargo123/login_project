import 'package:brighton/src/screens/login_screen/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../locator.dart';
import '../../constants/color_constants.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/custom_text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginBloc bloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.14,
                ),
                Image.asset(
                  "assets/images/app_icon.jpeg",
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                emailPasswordTextFields(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.8, // Same as Container's width
                  height: MediaQuery.of(context).size.height *
                      0.08, // Same as Container's height
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets
                          .zero, // Remove padding so the gradient effect fills the button
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Colors.blue, // Start color
                            Colors.red, // End color
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        constraints: BoxConstraints(
                          minWidth: MediaQuery.of(context).size.width * 0.8,
                          minHeight: MediaQuery.of(context).size.height * 0.08,
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.18,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget emailPasswordTextFields() {
    return StreamBuilder<bool>(
        initialData: false,
        stream: bloc.shouldShowErrorMessageController.stream,
        builder: (context, snapshot) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/email_ic.png",
                      scale: 3.8,
                      color: snapshot.data!
                          ? Colors.red
                          : ColorConstants.color_0xff2e87d8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Center(
                      child: TextField(
                        onChanged: (value) {
                          bloc.disableErrorMessage();
                        },
                        controller: emailController,
                        style: getIt<CustomTextStyle>().normal(
                            fontSize: 15,
                            color: ColorConstants.color_0xff1C1D20),
                        cursorColor: ColorConstants.color_0xff2e87d8,
                        decoration: InputDecoration(
                            labelStyle: getIt<CustomTextStyle>().normal(
                                fontSize: 15,
                                color: snapshot.data!
                                    ? Colors.red
                                    : ColorConstants.color_0xff707586
                                        .withOpacity(0.5)),
                            labelText: 'Email',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: snapshot.data!
                                        ? Colors.red
                                        : ColorConstants.color_0xff707586
                                            .withOpacity(0.2))),
                            disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: snapshot.data!
                                        ? Colors.red
                                        : ColorConstants.color_0xff707586
                                            .withOpacity(0.2))),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: snapshot.data! ? Colors.red : ColorConstants.color_0xff707586.withOpacity(0.2))),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: snapshot.data! ? Colors.red : ColorConstants.color_0xff707586.withOpacity(0.2)))),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/password_ic.png",
                      scale: 3.8,
                      color: snapshot.data!
                          ? Colors.red
                          : ColorConstants.color_0xff2e87d8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Center(
                      child: TextField(
                        controller: passwordController,
                        onChanged: (value) {
                          bloc.disableErrorMessage();
                        },
                        style: getIt<CustomTextStyle>().normal(
                            fontSize: 15,
                            color: ColorConstants.color_0xff1C1D20),
                        cursorColor: ColorConstants.color_0xff2e87d8,
                        decoration: InputDecoration(
                            labelStyle: getIt<CustomTextStyle>().normal(
                                fontSize: 15,
                                color: snapshot.data!
                                    ? Colors.red
                                    : ColorConstants.color_0xff707586
                                        .withOpacity(0.5)),
                            labelText: 'Password',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: snapshot.data!
                                        ? Colors.red
                                        : ColorConstants.color_0xff707586
                                            .withOpacity(0.2))),
                            disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: snapshot.data!
                                        ? Colors.red
                                        : ColorConstants.color_0xff707586
                                            .withOpacity(0.2))),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: snapshot.data! ? Colors.red : ColorConstants.color_0xff707586.withOpacity(0.2))),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: snapshot.data! ? Colors.red : ColorConstants.color_0xff707586.withOpacity(0.2)))),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }
}
