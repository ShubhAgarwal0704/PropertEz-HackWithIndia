// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:propert_ez/ui/components/MyButton.dart';
import 'package:propert_ez/ui/components/MyDivider.dart';
import 'package:propert_ez/ui/components/MyTextField.dart';
import 'package:propert_ez/utils/colors.dart';
import 'package:propert_ez/utils/images.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 160,
                  child: Image.asset(logoLong),
                ),
              ],
            ),
            Center(
              child: Container(
                width: 360,
                height: 680,
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
                            'Sign Up',
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
                      fieldHintText: "Full Name...",
                      headerText: "Name",
                    ),
                    AppTextField(
                      fieldHintText: "+91 00000 00000",
                      headerText: "Phone Number",
                    ),
                    AppTextField(
                      fieldHintText: "xyz@abc.com",
                      headerText: "Email",
                    ),
                    AppTextField(
                      fieldHintText: "********",
                      headerText: "Password",
                    ),
                    AppTextField(
                      fieldHintText: "********",
                      headerText: "Confirm Password",
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    SignInUpButton(),
                    SwitchLoginSignUp(),
                    SizedBox(
                      height: 6,
                    ),
                    MyDivider(),
                    SizedBox(
                      height: 24,
                    ),
                    GoogleSignInButton(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
