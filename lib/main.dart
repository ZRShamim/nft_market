// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nft_market/view/main_pages/home_page.dart';
import 'package:nft_market/view/onboarding_pages/onboarding_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'view/Auth/auth_page.dart';
// import 'view/Auth/varify_email_page.dart';
import 'view/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final prefs = await SharedPreferences.getInstance();
  // checking if the user enter the app for first time
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(RootPage(
    showHome: showHome,
  ));
}

final navigatorKey = GlobalKey<NavigatorState>();

class RootPage extends StatelessWidget {
  const RootPage({
    Key? key,
    required this.showHome,
  }) : super(key: key);

  final bool showHome;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: Utils.messengerKey,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'NFT Bazar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          // If not first time go HomePage else OnbordingPage will pop up
          showHome ? const HomePage() : const OnboardingPage(),

      // StreamBuilder(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     } else if (snapshot.hasError) {
      //       return const Center(
      //         child: Text("Something went wrong."),
      //       );
      //     } else if (snapshot.hasData) {
      //       return const VerifyEmailPage();
      //     } else {
      //       return const AuthPage();
      //     }
      //   },
      // ),
    );
  }
}
