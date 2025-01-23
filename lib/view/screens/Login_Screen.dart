import 'package:chatapp/utils/colors.dart';
import 'package:chatapp/utils/images.dart';
import 'package:chatapp/utils/spacing.dart';
import 'package:chatapp/view/widgets/reusedButton.dart';
import 'package:chatapp/view/widgets/reusedText.dart';
import 'package:chatapp/view/widgets/reusedicon.dart';
import 'package:chatapp/view/widgets/textField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(LoginImage),
          Spacing.verticalSpace(10),
          Container(
            margin: const EdgeInsets.only(left: 50, right: 50),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Reusedtext(
                      textContent: 'Login',
                      size: 50,
                      textColor: AppColors.darkBlue,
                      isBold: false),
                  Spacing.verticalSpace(30),
                  TextForm(
                    controller: emailController,
                    hintText: 'Email ID',
                    prefixicon: const Icon(Icons.alternate_email),
                  ),

                  //for password
                  Spacing.verticalSpace(50),
                  TextForm(
                    controller: passwordController,
                    hintText: 'Password',
                    prefixicon: Icon(
                      CupertinoIcons.lock_fill,
                      size: 25,
                    ),
                  ),

                  //forgetting password
                  Spacing.verticalSpace(10),
                  Container(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Reusedtext(
                          textContent: 'Forgot your password?',
                          size: 20,
                          textColor: AppColors.blue,
                          isBold: false),
                    ),
                  ),

                  // login button
                  Spacing.verticalSpace(30),
                  Reusedbutton(
                    buttonText: 'Login',
                    onpressed: () {},
                  ),

                  Spacing.verticalSpace(30),
                  Container(
                    alignment: Alignment.center,
                    child: const Reusedtext(
                        textContent: 'Or, Login with',
                        size: 20,
                        textColor: Colors.grey,
                        isBold: false),
                  ),
                  Spacing.verticalSpace(30),
                  //for icon login or social media login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReusedIcon(
                        imageName: googleImage,
                        ontap: () {},
                      ),
                      ReusedIcon(
                        imageName: facebookImage,
                        ontap: () {},
                      ),
                      ReusedIcon(
                        imageName: appleImage,
                        ontap: () {},
                      ),
                    ],
                  ),

                  Spacing.verticalSpace(30),
                  Row(
                    children: [
                      const Reusedtext(
                          textContent: 'Do not have an Account ? ',
                          size: 22,
                          textColor: Colors.grey,
                          isBold: true),
                      TextButton(
                          onPressed: () {},
                          child: Reusedtext(
                              textContent: "Register Now",
                              size: 23,
                              textColor: AppColors.blue,
                              isBold: false))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
