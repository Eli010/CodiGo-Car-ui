import 'package:codigo6_ui_two/widgets/buttom_custom_widget.dart';
import 'package:codigo6_ui_two/widgets/textfield_custom_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xff410ADF),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 50),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.w200),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.8,
                  // height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hello",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff363D47)),
                        ),
                        const Text(
                          "Create an account to continue",
                          style: TextStyle(color: Color(0xffBCBFC4)),
                        ),
                        const TextFieldCustom(label: "Username"),
                        const TextFieldCustom(label: "Email Address"),
                        const TextFieldCustom(
                          label: "Password",
                          suffixIcon: Icons.remove_red_eye,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ButtomCustom(
                            text: "CREATE",
                            press: () {},
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            padding: const EdgeInsets.all(10),
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                  text: 'Already have an account? ',
                                  style: const TextStyle(
                                    color: Color(0xffBCBFC4),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      onEnter: (event) {
                                        debugPrint("Sign In :::::");
                                      },
                                      text: ' Sign in',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black45,
                                        fontSize: 15,
                                      ),
                                      // navigate to desired screen
                                    ),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
