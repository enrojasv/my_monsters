import 'package:flutter/material.dart';

import '../model/pokemon_model.dart';
import '../repository/pokemon_repository.dart';
import 'components/pokemon_preview_item.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  late List<PokemonModel> _allPokemon = [];
  List<PokemonModel> _favoritePokemon = [];

  @override
  void initState() {
    var pokemonRepository = PokemonRepository();
    _allPokemon = pokemonRepository.getMockData();
    _favoritePokemon =
        _allPokemon.where((element) => element.favorite == true).toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var styleTitle =
        theme.textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold);

    var dividerIntent = 40.0;
    var paddingHorizontal = 24.0;
    var paddingVertical = 8.0;
    var sizedBoxDimension = 32.0;
    var textFavorites = "My Favorites";

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingVertical),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(textFavorites, style: styleTitle),
          SizedBox(height: sizedBoxDimension),
          Expanded(
              child: ListView.separated(
            itemBuilder: (_, index) {
              var pokemonModel = _favoritePokemon[index];

              return PokemonPreviewItem(pokemonModel: pokemonModel);
            },
            separatorBuilder: (_, __) =>
                Divider(indent: dividerIntent, endIndent: dividerIntent),
            itemCount: _favoritePokemon.length,
          )),
        ],
      ),
    );
  }
}
