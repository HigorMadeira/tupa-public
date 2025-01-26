import 'package:flutter/material.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';
import 'package:tupa_web/src/presentation/auth/widgets/login_view.dart';
import 'package:tupa_web/src/presentation/auth/widgets/sign_up_view.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  AuthViewState createState() => AuthViewState();
}

class AuthViewState extends State<AuthView> {
  bool isInLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          // Image.asset(
          //   'assets//auth/auth_background.jpg',
          //   fit: BoxFit.cover,
          // ),
          // Darkening Overlay
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
          // Login/Signup Form
          SafeArea(
            child: Center(
              child: SizedBox(
                height: 440,
                width: 600,
                child: Card(
                  color: AppColors.offWhite,
                  elevation: 24,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: isInLogin
                        ? LoginView(
                            onSignUp: () => setState(() => isInLogin = false),
                          )
                        : SignUpView(
                            onLogin: () => setState(() => isInLogin = true),
                          ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
