import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var styleName =
        theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold);
    var stylePokedex = theme.textTheme.titleMedium!.copyWith();
    var styleIntro =
        theme.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold);
    var styleDescription = theme.textTheme.bodyLarge!.copyWith();

    bool pokemonFavorite = false;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (pokemonFavorite == true) {
            pokemonFavorite = false;
          } else {
            pokemonFavorite = true;
          }
        },
        child: Icon(Icons.favorite),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CachedNetworkImage(
                      imageUrl:
                          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/1.png"),
                  Column(
                    children: [
                      Text(
                        "Bulbasaur",
                        style: styleName,
                      ),
                      Text(
                        "Pokédex #001",
                        style: stylePokedex,
                      )
                    ],
                  ),
                  CachedNetworkImage(
                      imageUrl:
                          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png"),
                ],
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Text("Type 1: ", style: styleIntro),
                  Text("Fire", style: styleDescription)
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Text("Type 2: ", style: styleIntro),
                  Text("Water", style: styleDescription)
                ],
              ),
              SizedBox(height: 8),
              Text("Description: ", style: styleIntro),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent semper, enim et faucibus mattis, leo justo luctus quam, at euismod ex tortor ac tellus. Vestibulum sagittis cursus magna eget auctor. In tortor orci, tincidunt a imperdiet eu, eleifend non quam. Mauris maximus odio feugiat lectus eleifend, quis ullamcorper nunc molestie.",
                style: styleDescription,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
