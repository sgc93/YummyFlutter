import 'dart:convert';

import 'package:http/http.dart' show get;
import 'package:yummy_flutter/models/recipe.dart';

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', 'feeds/list', { "limit": '24', "start": '0'});
    final fetchedJson = await get(uri, headers: {
    'X-RapidAPI-Key': 'e0eb433222mshe94ff72b7e662b9p1c4f14jsn6b4e63be9c85',
    'X-RapidAPI-Host': 'yummly2.p.rapidapi.com',
  });
    Map recipeMap = jsonDecode(fetchedJson.body);
    List recipeList = [];

    for(var recipe in recipeMap['feed']){
      recipeList.add(recipe['content']['details']);
    }
    return Recipe.extractFetchedJson(recipeList);
  }
}