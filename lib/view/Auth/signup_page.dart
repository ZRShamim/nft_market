import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../main.dart';
import '../utils.dart';
import 'widgets/neumorphism_widget.dart';

class SignUpPage extends StatefulWidget {
  final VoidCallback onClickedSignUp;

  const SignUpPage({Key? key, required this.onClickedSignUp}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final googleSignIn = GoogleSignIn();
    final fb = FacebookLogin();

    // Future facebookLogin() async {
    //   final res = await fb.logIn(permissions: [
    //     FacebookPermission.publicProfile,
    //     FacebookPermission.email,
    //   ]);

    //   if (res.status == FacebookLoginStatus.cancel) return;

    //   final credential = GoogleAuthProvider.credential(
    //     accessToken: res.accessToken?.token,
    //     idToken: res.accessToken?.userId,
    //   );

    //   await FirebaseAuth.instance.signInWithCredential(credential);
    // }

    Future googleLogIn() async {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ));
      try {
        final googleUser = await googleSignIn.signIn();
        if (googleUser == null) return;
        // user = googleUser;

        final googleAuth = await googleUser.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        await FirebaseAuth.instance.signInWithCredential(credential);
      } catch (e) {
        // print(e);

        Utils.showSnakBar(e.toString());
      }

      navigatorKey.currentState!.popUntil((route) => route.isFirst);
    }

    Future signUp() async {
      final isValid = formKey.currentState!.validate();
      if (!isValid) return;
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ));

      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
      } on FirebaseAuthException catch (e) {
        // print(e);

        Utils.showSnakBar(e.message);
      }

      navigatorKey.currentState!.popUntil((route) => route.isFirst);
    }

    return Scaffold(
      backgroundColor: const Color(0xffe7ecef),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                NeuMorphismWidget(
                  width: double.infinity,
                  height: 70,
                  radius: 30,
                  inset: true,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextFormField(
                      controller: emailController,
                      cursorColor: Colors.white,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        labelText: 'Email',
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
                  height: 15,
                ),
                NeuMorphismWidget(
                  width: double.infinity,
                  height: 70,
                  radius: 30,
                  inset: true,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextFormField(
                      controller: passwordController,
                      cursorColor: Colors.white,
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: InputBorder.none,
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (password) =>
                          password != null && password.length < 6
                              ? 'Enter min. 6 characters'
                              : null,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: signUp,
                  child: const NeuMorphismWidget(
                    height: 60,
                    width: 300,
                    radius: 30,
                    child: Text('Sign Up'),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text('Or'),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: googleLogIn,
                      child: NeuMorphismWidget(
                        width: 70,
                        height: 70,
                        radius: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(
                            'assets/logo/google.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: null,
                      child: NeuMorphismWidget(
                        width: 70,
                        height: 70,
                        radius: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(
                            'assets/logo/FB.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                RichText(
                  text: TextSpan(
                      text: 'Already have an account?   ',
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = widget.onClickedSignUp,
                          text: 'Log In',
                          style: const TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
