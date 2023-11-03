import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatefulWidget {
  final String name;

  const DetailsView({super.key, required this.name});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
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
    var pokemonFavoriteText = "Nope";
    var sizedBoxSmall = 8.0;
    var sizedBoxLarge = 32.0;
    var textType1 = "Type 1: ";
    var textType2 = "Type 2: ";
    var textHeight = "Height: ";
    var textWeight = "Weight: ";
    var textDescription = "Description: ";
    var textShiny = "Shiny Variants";

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (pokemonFavorite == true) {
            setState(() {
              pokemonFavorite = false;
              pokemonFavoriteText = "nope";
            });

          } else {
            setState(() {
              pokemonFavorite = true;
              pokemonFavoriteText = "yes";
            });

          }
        },
        child: const Icon(Icons.favorite),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CachedNetworkImage(
                      imageUrl:
                          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/1.png"),
                  Column(
                    children: [
                      Text(
                        widget.name,
                        style: styleName,
                      ),
                      Text(
                        "Pokédex #0001",
                        style: stylePokedex,
                      )
                    ],
                  ),
                  CachedNetworkImage(
                      imageUrl:
                          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png"),
                ],
              ),
              SizedBox(height: sizedBoxLarge),
              Row(
                children: [
                  Text(textType1, style: styleIntro),
                  Text("Grass", style: styleDescription),
                  SizedBox(width: sizedBoxLarge),
                  Text(textType2, style: styleIntro),
                  Text("Poison", style: styleDescription)
                ],
              ),
              SizedBox(height: sizedBoxSmall),
              Row(
                children: [
                  Text(textHeight, style: styleIntro),
                  Text("7 decimetres", style: styleDescription),
                ],
              ),
              SizedBox(height: sizedBoxSmall),
              Row(
                children: [
                  Text(textWeight, style: styleIntro),
                  Text("69 hectograms", style: styleDescription)
                ],
              ),
              SizedBox(height: sizedBoxLarge),
              Text(textDescription, style: styleIntro),
              Text(
                "There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.",
                style: styleDescription,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: sizedBoxLarge),
              Align(alignment: Alignment.center,child: Text(textShiny, style: styleIntro)),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CachedNetworkImage(imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/1.png"),
                  CachedNetworkImage(imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/1.png"),
                ],
              ),
              SizedBox(height: sizedBoxSmall),
              Text(pokemonFavoriteText),
            ],
          ),
        ),
      ),
    );
  }
}
