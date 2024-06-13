import 'package:flutter/material.dart';
import 'package:telead/utils/colors.dart';
import 'package:telead/widgets/custom_button.dart';
import 'package:telead/widgets/text.dart';

import '../../../widgets/social_button.dart';

class ContinueScreen extends StatefulWidget {
  const ContinueScreen({super.key});

  @override
  State<ContinueScreen> createState() => _ContinueScreenState();
}

class _ContinueScreenState extends State<ContinueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              headlineMedium(context, 'Let’s you in'),
              const SizedBox(
                height: 10,
              ),
              SocialButton(
                title: 'Continue with Google',
                image: Image.asset('assets/images/Group 11.png'),
                onTap: () {},
              ),
              SocialButton(
                title: 'Continue with Apple',
                image: Image.asset('assets/images/Group 3.png'),
                onTap: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "( Or )",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black54),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                title: 'Sign In with Your Account',
                onTap: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account?",
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                          color: AppColors.primaryColors,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
