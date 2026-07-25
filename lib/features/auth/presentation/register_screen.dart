import 'package:flutter/material.dart';

import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_logo.dart';
import '../../../shared/widgets/app_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Account"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 20),

              const AppLogo(),

              const SizedBox(height: 40),

              AppTextField(
                controller: fullNameController,
                label: "Full Name",
              ),

              const SizedBox(height: 16),

              AppTextField(
                controller: emailController,
                label: "Email",
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 16),

              AppTextField(
                controller: phoneController,
                label: "Phone Number",
                keyboardType: TextInputType.phone,
              ),

              const SizedBox(height: 16),

              AppTextField(
                controller: passwordController,
                label: "Password",
                obscureText: true,
              ),

              const SizedBox(height: 30),

              AppButton(
                text: "Create Account",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}import '../../features/auth/presentation/register_screen.dart';GoRoute(
  path: '/register',
  builder: (context, state) => const RegisterScreen(),
),SizedBox(
  width: double.infinity,
  child: ElevatedButton(
    onPressed: () {
      context.go('/register');
    },
    child: const Text("Create Account"),
  ),
),import 'package:go_router/go_router.dart';git add .
git commit -m "Sprint 2: Add register screen"
git push origin develop
