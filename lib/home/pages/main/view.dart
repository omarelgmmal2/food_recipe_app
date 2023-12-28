import 'package:flutter/material.dart';
import '../../../core/design/app_image.dart';
import '../../../core/design/app_input.dart';
import '../../../core/design/custom_appbar.dart';
import '../../../features/quick_and_fast/view.dart';
import '../../../models/category/view.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  String currentIndex = "All";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE6EBEE),
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            const AppInput(
              labelText: "Search any recipes",
              //icon: "assets/icons/search.svg",
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: const AppImage(
                "assets/images/explore.png",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children:
               List.generate(
                 catgories.length,
                     (index) => Container(
                 margin: const EdgeInsets.only(right: 20),
                   padding: const EdgeInsets.symmetric(
                     horizontal: 20,
                     vertical: 10,
                   ),
                   decoration: BoxDecoration(
                     color: currentIndex == catgories[index].toString() ? const Color(0xff538B9B) :Colors.white,
                     borderRadius: BorderRadius.circular(25),
                   ),
                   child:  Center(
                     child: Text(
                       catgories[index],
                       style: TextStyle(
                         fontSize: 17,
                         fontWeight: FontWeight.w400,
                         color: currentIndex == catgories[index] ? Colors.white : Colors.grey.shade600,
                       ),
                     ),
                   ),
                 ),
               ),
             ),
           ),
            const SizedBox(
              height: 16,
            ),
            const QuickAndFast(),
          ],
        ),
      ),
    );
  }
}
