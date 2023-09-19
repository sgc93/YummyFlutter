import 'package:flutter/material.dart';
import 'package:yummy_flutter/models/recipe.dart';
import 'package:yummy_flutter/models/recipe_api.dart';
import 'package:yummy_flutter/widgets/app_bar.dart';
import 'package:yummy_flutter/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final  double _deviceHeight = MediaQuery.of(context).size.height;
  List<Recipe> _recipeList = [] ;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipeList = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
    print(_recipeList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(26, 26, 47, 1),
      appBar: CustomAppBar(height: _deviceHeight * 0.10),
      body: _isLoading ? const Center(child: CircularProgressIndicator()) : ListView.builder(
        itemCount: _recipeList.length,
        itemBuilder: (context, int index){
          return RecipeCard(
            title: _recipeList[index].name,
            rating: _recipeList[index].rating.toString(),
            cookTime: _recipeList[index].totalTime,
            thumbnailUrl: _recipeList[index].images,
          );
        }
      ),
    );
  }
}