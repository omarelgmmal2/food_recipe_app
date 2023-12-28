import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/auth/login/view.dart';
import 'package:food_recipe_app/core/logic/helper_methods.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      toGetNavigate(const LoginView(),);
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212325),
      body: Stack(
        children: [
          Center(
            child: FadeInDown(
              child: Image.network(
                  "https://graphicsfamily.com/wp-content/uploads/edd/2021/06/Editable-Photoshop-Food-Logo-Design-PNG-Transparent.png",
                width: 200,
                height: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
