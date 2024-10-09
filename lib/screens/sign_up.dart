import 'package:flutter/material.dart';
import 'package:provider2/screens/log_in.dart';
import 'package:provider2/widgets/custom_button.dart';
import 'package:provider2/widgets/custom_text_filed.dart';

class SignUp extends StatelessWidget {
  static const String routeName = "SignUp";

  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 16, left: 26, right: 26, bottom: 70),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Your Logo",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 41,
                ),
                const Text(
                  "Sign in up",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Lorem Ipsum is simply ",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "If you already have an account register",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    const Text(
                      "You can",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, LogIn.routeName);
                      },
                      child: const Text(
                        "Login here !",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4D47C3)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 52,
                ),
                const CustomTextFiled(
                  hint: "Enter Email",
                ),
                const SizedBox(
                  height: 18,
                ),
                const CustomTextFiled(
                  hint: "Create User name",
                ),
                const SizedBox(
                  height: 18,
                ),
                const CustomTextFiled(
                  hint: "Contact number",
                ),
                const SizedBox(
                  height: 18,
                ),
                const CustomTextFiled(
                  hint: "Password",
                ),
                const SizedBox(
                  height: 18,
                ),
                const CustomTextFiled(
                  hint: "Confirm Password",
                ),
                const SizedBox(
                  height: 28,
                ),
                 Center(
                  child: CustomButton(text: "Register", onTap: (){},),
                ),
                const SizedBox(
                  height: 48,
                ),
                const Center(
                  child: Text(
                    "or continue with",
                    style: TextStyle(color: Color(0xffB5B5B5), fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 38,
                ),
                Center(child: Image.asset("assets/images/Group 13.png")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
