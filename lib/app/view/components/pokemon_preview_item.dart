import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_monsters/app/model/pokemon_preview_model.dart';

class PokemonPreviewItem extends StatelessWidget {
  const PokemonPreviewItem({super.key, required this.pokemonPreviewModel});

  final PokemonPreviewModel pokemonPreviewModel;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var styleName =
        theme.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold);
    var stylePokedex = theme.textTheme.bodyLarge!.copyWith();

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        CachedNetworkImage(imageUrl: pokemonPreviewModel.image),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(pokemonPreviewModel.name, style: styleName),
            Text("Pokédex #${pokemonPreviewModel.pokedex}", style: stylePokedex)
          ],
        )
      ],
    );
  }
}
