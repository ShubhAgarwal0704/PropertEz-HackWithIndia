// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:propert_ez/ui/components/MyButton.dart';
import 'package:propert_ez/ui/components/MyDivider.dart';
import 'package:propert_ez/ui/components/MyTextField.dart';
import 'package:propert_ez/utils/colors.dart';
import 'package:propert_ez/utils/images.dart';

import '../components/MyButton4.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    child: Image.asset("assets/images/logo4.png"),
                  ),
                  SizedBox(
                    height: 220,
                  )
                ],
              ),
              Center(
                child: Container(
                  width: 360,
                  height: 450,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 4,
                            blurStyle: BlurStyle.outer,
                            spreadRadius: 4,
                            offset: Offset(1, 3),
                            color: Colors.black)
                      ],
                      color: signUpCardColor,
                      borderRadius: BorderRadius.circular(24)),
                  child: const Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Row(
                          children: [
                            Text(
                              'Log In',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: textColor,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppTextField(
                        fieldHintText: "+91 00000 00000",
                        headerText: "Phone Number",
                      ),
                      AppTextField(
                        fieldHintText: "********",
                        headerText: "Password",
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      SignInUp2Button(),
                      SwitchLoginSignUp2(),
                      SizedBox(
                        height: 6,
                      ),
                      MyDivider(),
                      SizedBox(
                        height: 24,
                      ),
                      GoogleSignInButton2(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
