
import 'package:get/get.dart';
import 'package:meals_app/models/meal.dart';

class MealsController extends GetxController {

  final favoriteMeals = List<Meal>.empty().obs;

  String toggleFavoritMeal(Meal meal) {
    final isExisting = favoriteMeals.contains(meal);
    if (isExisting) {
      favoriteMeals.remove(meal);
      return "Meal is no longer Favourite.";
    } else {
      favoriteMeals.add(meal);
      return "Marked as Favourite.";
    }
  }
}