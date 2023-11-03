class PokemonModel {
  String name = "";
  String pokedex = "";
  String imageFront = "";
  String imageBack = "";
  bool favorite = false;
  String type1 = "";
  String type2 = "";
  String description = "";

  PokemonModel.initData(
      {required this.name,
      required this.pokedex,
      required this.imageFront,
      required this.imageBack,
      required this.favorite,
      required this.type1,
      required this.type2,
      required this.description});
}
