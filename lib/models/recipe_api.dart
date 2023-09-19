import 'dart:convert';

import 'package:http/http.dart' show get;
import 'package:yummy_flutter/models/recipe.dart';

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', 'feeds/list', { "limit": "18", "start": "0", "tag": "list.recipe.popular"});
    final fetchedJson = await get(uri, headers: {
    'X-RapidAPI-Key': 'YOUR API KEK',
    'X-RapidAPI-Host': 'yummly2.p.rapidapi.com',
    "useQueryString": "true",
  });
    Map recipeMap = jsonDecode(fetchedJson.body);
    List recipeList = [];

    for(var recipe in recipeMap['feed']){
      recipeList.add(recipe['content']['details']);
    }
    return Recipe.extractFetchedJson(recipeList);
  }
}