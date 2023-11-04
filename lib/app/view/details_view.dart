import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailsView extends StatefulWidget {
  String name = "";
  String pokedex = "";
  String imageFront = "";
  String imageBack = "";
  String imageFrontShiny = "";
  String imageBackShiny = "";
  String type1 = "";
  String type2 = "";
  String description = "";
  int height = 0;
  int weight = 0;
  bool favorite = false;

  DetailsView(
      {super.key,
      required this.name,
      required this.pokedex,
      required this.imageFront,
      required this.imageBack,
      required this.imageFrontShiny,
      required this.imageBackShiny,
      required this.type1,
      required this.type2,
      required this.description,
      required this.height,
      required this.weight,
      required this.favorite});



  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  bool favoriteShPr = false;

  Future<void> _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      favoriteShPr = (prefs.getBool('favorite') ?? false);
    });
  }

  Future<void> _toggleFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      favoriteShPr = (prefs.getBool('favorite') ?? false);
      prefs.setBool('favorite', !favoriteShPr);
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var styleName =
        theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold);
    var stylePokedex = theme.textTheme.titleMedium!.copyWith();
    var styleIntro =
        theme.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold);
    var styleDescription = theme.textTheme.bodyLarge!.copyWith();

    var sizedBoxSmall = 8.0;
    var sizedBoxLarge = 32.0;
    IconData iconFav = Icons.favorite_rounded;
    IconData iconNoFav = Icons.favorite_outline_rounded;
    var textPokedex = "#";
    var textType1 = "Type 1: ";
    var textType2 = "Type 2: ";
    var textHeight = "Height: ";
    var textHeightMeasurementUnit = " decimetres";
    var textWeight = "Weight: ";
    var textWeightMeasurementUnit = " hectograms";
    var textDescription = "Description: ";
    var textShiny = "Shiny Variants";

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (favoriteShPr == true) {
            setState(() {
              _toggleFavorite();
              _loadPreferences();
              widget.favorite = false;
            });
          } else {
            setState(() {
              _toggleFavorite();
              _loadPreferences();
              widget.favorite = true;
            });
          }
        },
        child: Icon(favoriteShPr ? iconFav : iconNoFav),
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
                  CachedNetworkImage(imageUrl: widget.imageBack),
                  Column(
                    children: [
                      Text(
                        widget.name,
                        style: styleName,
                      ),
                      Text(
                        textPokedex + widget.pokedex,
                        style: stylePokedex,
                      )
                    ],
                  ),
                  CachedNetworkImage(imageUrl: widget.imageFront),
                ],
              ),
              SizedBox(height: sizedBoxLarge),
              Row(
                children: [
                  Text(textType1, style: styleIntro),
                  Text(widget.type1, style: styleDescription),
                  SizedBox(width: sizedBoxLarge),
                  Text(textType2, style: styleIntro),
                  Text(widget.type2, style: styleDescription)
                ],
              ),
              SizedBox(height: sizedBoxSmall),
              Row(
                children: [
                  Text(textHeight, style: styleIntro),
                  Text(widget.height.toString() + textHeightMeasurementUnit,
                      style: styleDescription),
                ],
              ),
              SizedBox(height: sizedBoxSmall),
              Row(
                children: [
                  Text(textWeight, style: styleIntro),
                  Text(widget.weight.toString() + textWeightMeasurementUnit,
                      style: styleDescription)
                ],
              ),
              SizedBox(height: sizedBoxLarge),
              Text(textDescription, style: styleIntro),
              Text(
                widget.description,
                style: styleDescription,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: sizedBoxLarge),
              Align(
                  alignment: Alignment.center,
                  child: Text(textShiny, style: styleIntro)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CachedNetworkImage(imageUrl: widget.imageBackShiny),
                  CachedNetworkImage(imageUrl: widget.imageFrontShiny),
                ],
              ),
              SizedBox(height: sizedBoxSmall),
              Row(
                children: [
                  Text("Favorite repository: ", style: styleIntro),
                  Text(widget.favorite.toString(), style: styleDescription)
                ],
              ),
              SizedBox(height: sizedBoxSmall),
              Row(
                children: [
                  Text("Favorite preferences: ", style: styleIntro),
                  Text(favoriteShPr.toString(), style: styleDescription)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
