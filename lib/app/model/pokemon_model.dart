class PokemonModel {
  String name = "";
  String pokedex = "";
  String imageFront = "";
  String imageBack = "";
  String imageFrontShiny = "";
  String imageBackShiny = "";
  String type1 = "";
  String type2 = "";
  String description = "";
  int height = 0;
  int weight = 0;
  bool favorite = false;

  PokemonModel.initData({
      required this.name,
      required this.pokedex,
      required this.imageFront,
      required this.imageBack,
      required this.imageFrontShiny,
      required this.imageBackShiny,
      required this.type1,
      required this.type2,
      required this.description,
      required this.height,
      required this.weight,
      required this.favorite,
  });
}
