import 'package:bustrackingsystem/src/constants/colors.dart';
import 'package:bustrackingsystem/src/constants/image_strings.dart';
import 'package:bustrackingsystem/src/constants/sizes.dart';
import 'package:bustrackingsystem/src/constants/text_strings.dart';
import 'package:bustrackingsystem/src/features/authentication/screens/signup/widget/signup_form_widget.dart';
import 'package:flutter/material.dart';

import '../../../../common_widgets/form/form_header_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                ),
                SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(tGoogleLogoImage),
                          width: 20.0,
                        ),
                        label: Text(tSignUpWithGoogle.toUpperCase()),
                      ),
                    ),
                    TextButton(
                        onPressed: (){},
                        child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: tAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyText1),
                                TextSpan(text:tLogin.toUpperCase())
                              ]
                            )
                        )
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


