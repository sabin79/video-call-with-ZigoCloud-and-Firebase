import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_callig_firebase_agora/firebase_options.dart';
import 'package:video_callig_firebase_agora/views/auth/login_page.dart';
import 'package:video_callig_firebase_agora/views/auth/signup.dart';
import 'package:video_callig_firebase_agora/views/home/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
          primarySwatch: Colors.indigo,
        ),
        home: FirebaseAuth.instance.currentUser == null
            ? const Login()
            : const HomePage());
  }
}
