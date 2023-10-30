import '../model/pokemon_preview_model.dart';

class PokemonPreviewRepository {
  List<PokemonPreviewModel> getMockdata() {
    final growableList = <PokemonPreviewModel>[
      PokemonPreviewModel.initData("Ditto", "132",
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png"),
      PokemonPreviewModel.initData("Bulbasaur", "001",
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png"),
      PokemonPreviewModel.initData("Charmander", "004",
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png"),
      PokemonPreviewModel.initData("Squirtle", "007",
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png"),
    ];
    return growableList;
  }
}
