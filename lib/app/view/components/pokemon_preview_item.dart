import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_monsters/app/model/pokemon_model.dart';
import 'package:my_monsters/app/view/details_view.dart';

class PokemonPreviewItem extends StatelessWidget {
  const PokemonPreviewItem({super.key, required this.pokemonModel});

  final PokemonModel pokemonModel;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var styleName =
        theme.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold);
    var stylePokedex = theme.textTheme.bodyLarge!.copyWith();

    var textPokedex = "Pokédex #";

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  DetailsView(name: pokemonModel.name)),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
          CachedNetworkImage(imageUrl: pokemonModel.imageFront),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pokemonModel.name, style: styleName),
              Text(textPokedex + pokemonModel.pokedex,
                  style: stylePokedex)
            ],
          )
        ],
      ),
    );
  }
}
