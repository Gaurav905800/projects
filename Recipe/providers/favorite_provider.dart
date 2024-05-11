import 'package:flutter_application_1/Recipe/models/meal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteMealNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealNotifier() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFav = state.contains(meal);
    if (mealIsFav) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favotiteMealsProvider =
    StateNotifierProvider<FavoriteMealNotifier, List<Meal>>(
        (ref) => FavoriteMealNotifier());
