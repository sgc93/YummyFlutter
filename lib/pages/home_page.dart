import 'package:flutter/material.dart';
import 'package:yummy_flutter/widgets/app_bar.dart';
import 'package:yummy_flutter/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final  double _deviceWidth = MediaQuery.of(context).size.width;
  late final  double _deviceHeight = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(26, 26, 47, 1),
      appBar: CustomAppBar(height: _deviceHeight * 0.10),
      body: const RecipeCard(
        title: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360', 
        rating: '4.3', 
        cookTime: '43 min', 
        thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360'
      ),
    );
  }
}