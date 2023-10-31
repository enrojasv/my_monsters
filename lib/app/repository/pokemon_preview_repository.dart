import '../model/pokemon_preview_model.dart';

class PokemonPreviewRepository {
  List<PokemonPreviewModel> getMockData() {
    final growableList = <PokemonPreviewModel>[
      PokemonPreviewModel.initData(name: "Ditto", pokedex: "132",
          image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png"),
      PokemonPreviewModel.initData(name: "Bulbasaur", pokedex: "001",
          image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png"),
      PokemonPreviewModel.initData(name: "Charmander", pokedex: "004",
          image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png"),
      PokemonPreviewModel.initData(name: "Squirtle", pokedex: "007",
          image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png"),
    ];
    return growableList;
  }
}
