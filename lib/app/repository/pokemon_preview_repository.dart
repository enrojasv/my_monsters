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
      PokemonPreviewModel.initData(name: "Mewtwo", pokedex: "150",
          image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/150.png"),
      PokemonPreviewModel.initData(name: "Mew", pokedex: "007",
          image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/151.png"),
      PokemonPreviewModel.initData(name: "Porygon", pokedex: "137",
          image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/137.png"),
    ];
    return growableList;
  }
}
