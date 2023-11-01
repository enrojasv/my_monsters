import 'package:flutter/material.dart';

import '../repository/pokemon_preview_repository.dart';
import 'components/pokemon_preview_item.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  @override
  Widget build(BuildContext context) {
    var pokemonPreviewRepository = PokemonPreviewRepository();
    var pokemonData = pokemonPreviewRepository.getMockData();

    var theme = Theme.of(context);
    var styleTitle =
    theme.textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold);

    var dividerIntent = 40.0;
    var paddingHorizontal = 24.0;
    var paddingVertical = 8.0;
    var sizedBoxMedium = 16.0;
    var sizedBoxLarge = 32.0;
    var textFavorites = "My Favorites";

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingVertical),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(textFavorites, style: styleTitle),
          SizedBox(height: sizedBoxLarge),
          Expanded(
              child: ListView.separated(
                itemBuilder: (_, index) {
                  var pokemonPreviewModel = pokemonData[index];

                  return PokemonPreviewItem(
                      pokemonPreviewModel: pokemonPreviewModel);
                },
                separatorBuilder: (_, __) =>
                    Divider(indent: dividerIntent, endIndent: dividerIntent),
                itemCount: pokemonData.length,
              )),
        ],
      ),
    );
  }
}