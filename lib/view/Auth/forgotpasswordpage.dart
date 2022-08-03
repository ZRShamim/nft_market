import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nft_market/view/utils.dart';

import '../../main.dart';
import 'widgets/neumorphism_widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future resetPassword() async {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ));

      try {
        await FirebaseAuth.instance
            .sendPasswordResetEmail(email: emailController.text.trim());

        Utils.showSnakBar('Password Reset Email Sent');

        navigatorKey.currentState!.popUntil((route) => route.isFirst);
      } on FirebaseAuthException catch (e) {
        // print(e);

        Utils.showSnakBar(e.message);
        Navigator.of(context).pop();
      }
    }

    return Scaffold(
      backgroundColor: const Color(0xffe7ecef),
      appBar: AppBar(
        // backgroundColor: const Color(0xffe7ecef),
        elevation: 0,
        title: const Text('Password Reset'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Receive an email to \nreset your password.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              NeuMorphismWidget(
                width: double.infinity,
                height: 70,
                radius: 30,
                inset: true,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextFormField(
                    controller: emailController,
                    textInputAction: TextInputAction.done,
                    decoration: const InputDecoration(
                      labelText: 'email',
                      border: InputBorder.none,
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? 'Enter a valid email'
                            : null,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: resetPassword,
                child: const NeuMorphismWidget(
                  height: 60,
                  width: 300,
                  radius: 30,
                  child: Text('Reset Password'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
