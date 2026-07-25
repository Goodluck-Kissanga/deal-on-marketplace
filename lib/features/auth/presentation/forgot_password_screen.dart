import 'package:flutter/material.dart';

import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState
    extends State<ForgotPasswordScreen> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 30),

            const Text(
              "Enter your email address and we'll send you a password reset link.",
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            AppTextField(
              controller: emailController,
              label: "Email",
              keyboardType: TextInputType.emailAddress,
            ),

            const SizedBox(height: 30),

            AppButton(
              text: "Send Reset Link",
              onPressed: () {
                // Firebase logic itaongezwa baadaye
              },
            ),
          ],
        ),
      ),
    );
  }
}import '../../features/auth/presentation/forgot_password_screen.dart';GoRoute(
  path: '/forgot-password',
  builder: (context, state) =>
      const ForgotPasswordScreen(),
),import 'package:go_router/go_router.dart';TextButton(
  onPressed: () {
    context.go('/forgot-password');
  },
  child: const Text("Forgot Password?"),
),
