import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nft_market/view/home_page/home_page.dart';

import 'package:nft_market/view/utils.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  bool isEmailVerified = false;
  bool canResendEmail = false;
  Timer? timer;

  @override
  void initState() {
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    if (!isEmailVerified) {
      sendVerificationMail();

      timer = Timer.periodic(
          const Duration(seconds: 3), (_) => checkEmailVerified());
    }
    super.initState();
  }

  Future sendVerificationMail() async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();

      setState(() {
        canResendEmail = false;
      });
      await Future.delayed(const Duration(seconds: 5));
      setState(() {
        canResendEmail = true;
      });
    } catch (e) {
      Utils.showSnakBar(e.toString());
    }
  }

  Future checkEmailVerified() async {
    // call after email verification
    await FirebaseAuth.instance.currentUser!.reload();

    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });

    if (isEmailVerified) timer?.cancel();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isEmailVerified
        ? const HomePage()
        : Scaffold(
            appBar: AppBar(
              title: const Text('Verify Email'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'A verification email has been sent to your email.',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton.icon(
                      onPressed: canResendEmail ? sendVerificationMail : null,
                      icon: const Icon(Icons.mail),
                      label: const Text(
                        'Resend Email',
                        style: TextStyle(fontSize: 24),
                      )),
                  const SizedBox(
                    height: 24,
                  ),
                  TextButton(
                    onPressed: () => FirebaseAuth.instance.signOut(),
                    child: const Text('Cancel'),
                  ),
                ],
              ),
            ),
          );
  }
}
