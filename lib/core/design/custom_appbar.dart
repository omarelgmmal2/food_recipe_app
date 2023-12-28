import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 120,
      child: Row(
        children: [
          const Expanded(
            child: Text.rich(
              TextSpan(
                  text: "What are you\n",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "cooking today?",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ]
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none,),padding: const EdgeInsets.all(7),),
          ),
        ],
      ),

    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(120);
}
