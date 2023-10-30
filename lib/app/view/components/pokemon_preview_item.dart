import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_monsters/app/model/pokemon_preview_model.dart';

class PokemonPreviewItem extends StatelessWidget {
  const PokemonPreviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        CachedNetworkImage(imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png"),
        SizedBox(width: 8),
        Column(children: [Text("Ditto falso"),
          Text("Pokedex #151 falso")],)
      ],
    );
  }
}
