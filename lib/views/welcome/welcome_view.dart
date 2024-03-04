import 'package:flutter/material.dart';
import 'package:forge/core/extensions/device_size.dart';
import 'package:forge/views/signup/signup_view.dart';
import 'package:forge/widgets/button/custom_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bicep.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Let\'s get started.',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  title: 'Get Started',
                  onPress: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignupView(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                CustomButton(
                  title: 'Log in',
                  isPrimary: false,
                  onPress: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignupView(),
                      ),
                    );
                  },
                ),
                SizedBox(height: context.bottomPadding),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
