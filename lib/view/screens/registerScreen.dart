import 'package:chatapp/utils/colors.dart';
import 'package:chatapp/utils/images.dart';
import 'package:chatapp/utils/spacing.dart';
import 'package:chatapp/view/widgets/reusedButton.dart';
import 'package:chatapp/view/widgets/reusedText.dart';
import 'package:chatapp/view/widgets/reusedicon.dart';
import 'package:chatapp/view/widgets/textField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(RegisterImage),
              Spacing.verticalSpace(10),
              Container(
                margin: const EdgeInsets.only(left: 50, right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Reusedtext(
                        textContent: 'Register',
                        size: 50,
                        textColor: AppColors.darkBlue,
                        isBold: false),
                    Spacing.verticalSpace(25),
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
                    Container(
                      alignment: Alignment.center,
                      child: const Reusedtext(
                          textContent: 'Or, Register with ',
                          size: 20,
                          textColor: Colors.grey,
                          isBold: false),
                    ),
                    TextForm(
                      controller: emailController,
                      hintText: 'Email ID',
                      prefixicon: Icon(Icons.alternate_email),
                    ),
                    //for password
                    Spacing.verticalSpace(40),
                    TextForm(
                      controller: passwordController,
                      hintText: 'Password',
                      prefixicon: const Icon(
                        CupertinoIcons.lock_fill,
                        size: 25,
                      ),
                    ),
                    Spacing.verticalSpace(40),
                    TextForm(
                      controller: phoneNumberController,
                      hintText: 'Mobile number',
                      prefixicon: const Icon(
                        CupertinoIcons.phone,
                        size: 25,
                      ),
                    ),
                    // login button
                    Spacing.verticalSpace(50),

                    Reusedbutton(
                      buttonText: 'Sign Up',
                      onpressed: () {},
                    ),

                    Spacing.verticalSpace(15),
                    Row(
                      children: [
                        const Reusedtext(
                            textContent: 'have an Account ?',
                            size: 22,
                            textColor: Colors.grey,
                            isBold: true),
                        TextButton(
                          onPressed: () {},
                          child: Reusedtext(
                              textContent: "Login Now",
                              size: 23,
                              textColor: AppColors.blue,
                              isBold: false),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
