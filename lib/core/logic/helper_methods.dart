import 'package:flutter/material.dart';

final navigateKey = GlobalKey<NavigatorState>();

toGetNavigate(Widget page) {
  Navigator.push(
    navigateKey.currentContext!,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}
