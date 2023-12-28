import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/auth/login/view.dart';
import 'package:food_recipe_app/auth/register/view.dart';
import 'package:food_recipe_app/home/view.dart';
import 'core/logic/helper_methods.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid?
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyAHxTTVJEnwT_85-sDibvWtuW14sWfmw10",
        appId: "1:584682410284:android:d61abe8a868e1a62e95c89",
        messagingSenderId: "584682410284",
        projectId: "food-recipe-app-62f0b",
      )
  ) : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food Recipe app",
      debugShowCheckedModeBanner: false,
      navigatorKey: navigateKey,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
      home: const LoginView(),
    );
  }
}
