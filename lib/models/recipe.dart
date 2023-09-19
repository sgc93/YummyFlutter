class Recipe {
  final String name;
  final String images;
  final double rating;
  final String totalTime;
  
  Recipe({
    required this.name,
    required this.images,
    required this.rating,
    required this.totalTime,
  });

  factory Recipe.fromJSON(dynamic json){
    return Recipe(
      name: json['name'] as String,
      images: json['images'][0]['hostedLargeUrl'] as String,
      rating: json['rating'] as double,
      totalTime: json['totalTime'] as String,
    );
  }

  List<Recipe> extractFetchedJson(List recipesInJson){
    return recipesInJson.map((recipe){
      return Recipe.fromJSON(recipe);
    }).toList();
  }
}