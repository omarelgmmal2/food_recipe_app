import 'package:flutter/material.dart';
import 'package:food_recipe_app/core/logic/helper_methods.dart';
import 'package:food_recipe_app/features/quick_and_fast/quick_foods/view.dart';
import 'package:food_recipe_app/features/recipe_page/view.dart';
import '../../models/food/view.dart';

class QuickAndFast extends StatelessWidget {
  const QuickAndFast({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              "Quick & Fast",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: (){
                toGetNavigate(const QuickFoodsViewAll(),);
              },
              child: const Text(
                "View All",
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              foods.length,
                  (index) => GestureDetector(
                    onTap: () {
                      toGetNavigate(RecipePage(food: foods[index],),);
                    },
                    child: Container(
                margin: const EdgeInsets.only(right: 10),
                width: 200,
                child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  foods[index].image,
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            foods[index].name,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.flash_on_outlined,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Text(
                                "${foods[index].cal} Cal",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              const Text(" - ",style: TextStyle(color: Colors.grey,),),
                              const Icon(
                                Icons.alarm,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Text(
                                "${foods[index].time} Min",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: const Icon(
                              Icons.heart_broken,
                              color: Colors.grey,
                            ),
                            iconSize: 30,
                            alignment: AlignmentDirectional.center,
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.white,
                              fixedSize: const Size(30, 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                ),
              ),
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
