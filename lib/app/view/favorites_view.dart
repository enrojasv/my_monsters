import 'package:flutter/material.dart';

import '../constants/dimens.dart';
import '../constants/strings.dart';
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

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimens.paddingHorizontal,
          vertical: Dimens.paddingVertical),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Strings.stringMyFavorites, style: styleTitle),
          const SizedBox(height: Dimens.sizedBoxLarge),
          Expanded(
              child: ListView.separated(
            itemBuilder: (_, index) {
              var pokemonModel = _favoritePokemon[index];

              return PokemonPreviewItem(pokemonModel: pokemonModel);
            },
            separatorBuilder: (_, __) => const Divider(
                indent: Dimens.dividerIntent, endIndent: Dimens.dividerIntent),
            itemCount: _favoritePokemon.length,
          )),
        ],
      ),
    );
  }
}
