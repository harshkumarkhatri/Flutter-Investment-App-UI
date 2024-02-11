import 'package:flutter/material.dart';
import 'package:invest_app/create_account_screen.dart';
import 'package:invest_app/login_account_screen.dart';

import 'core/create_account_button.dart';
import 'core/green_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 273,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/onboarding.png",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            const Text(
              "Stay on top of your finance with us.",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.2,
                color: Colors.black,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: Text(
                "We are your new financial Advisors to recommend the best investments for you.",
                style: TextStyle(
                  color: Color(
                    0xff4F4F4F,
                  ),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  height: 1.1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            createAccountButton(
              text: "Create account",
              context: context,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CreateAccountScreen(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 18,
            ),
            greeText(
              text: "Login",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LoginAccountScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
