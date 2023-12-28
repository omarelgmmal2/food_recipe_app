import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'pages/favs/view.dart';
import 'pages/main/view.dart';
import 'pages/plan/view.dart';
import 'pages/setting/view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  List<Widget> pages = const [
    MainPage(),
    FavsPage(),
    MealPlanPage(),
    SettingPage(),
  ];

  List<String> titles = [
    "Home",
    "Favorites",
    "Meal plan",
    "Settings",
  ];

  List<String> icons = [
    "assets/icons/home.svg",
    "assets/icons/favs.svg",
    "assets/icons/cart.svg",
    "assets/icons/my_account.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: List.generate(
          pages.length,
              (index) => BottomNavigationBarItem(
            icon: SvgPicture.asset(
              icons[index],
              color: currentIndex == index
                  ? Colors.blue
                  : const Color(0xffAED489),
            ),
            label: titles[index],
          ),
        ),
      ),
    );
  }
}
