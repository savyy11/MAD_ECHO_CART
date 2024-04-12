import 'package:eco_user_app/models/categories_model.dart';

import '../services/assets_manager.dart';

class AppConstants {
  static List<String> bannersImages = [
    AssetsManager.banner1,
    AssetsManager.banner2
  ];

  static List<CategoriesModel> categoriesList = [
    CategoriesModel(
      id: "Masks",
      image: AssetsManager.mask,
      name: "Masks",
    ),
    CategoriesModel(
      id: "Puppets",
      image: AssetsManager.puppet,
      name: "Puppets",
    ),
    CategoriesModel(
      id: "CaneItems",
      image: AssetsManager.cane,
      name: "CaneItems",
    ),
    CategoriesModel(
      id: "CoconutCraft",
      image: AssetsManager.coconut,
      name: "CoconutCraft",
    ),
    CategoriesModel(
      id: "Clothes",
      image: AssetsManager.clothes,
      name: "Clothes",
    ),
    CategoriesModel(
      id: "Clay Items",
      image: AssetsManager.pot,
      name: "Clay Items",
    ),
  ];
}
