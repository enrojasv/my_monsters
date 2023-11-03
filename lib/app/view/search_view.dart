import 'package:flutter/material.dart';
import 'package:my_monsters/app/model/pokemon_preview_model.dart';
import 'package:my_monsters/app/repository/pokemon_preview_repository.dart';
import 'package:my_monsters/app/view/components/pokemon_preview_item.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final searchController = TextEditingController();
  late List<PokemonPreviewModel> _allPokemon = [];
  List<PokemonPreviewModel> _foundPokemon = [];

  @override
  void initState() {
    // at the beginning, all Pokemon are shown
    var pokemonPreviewRepository = PokemonPreviewRepository();
    _allPokemon = pokemonPreviewRepository.getMockData();
    _foundPokemon = _allPokemon;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<PokemonPreviewModel> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allPokemon;
    } else {
      results = _allPokemon
          .where((element) => element.name
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase().trim()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundPokemon = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var styleTitle =
        theme.textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold);

    var dividerIntent = 40.0;
    var paddingHorizontal = 24.0;
    var paddingVertical = 8.0;
    var sizedBoxMedium = 16.0;
    var sizedBoxLarge = 32.0;
    var textSearch = "Search";

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingVertical),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(textSearch, style: styleTitle),
          SizedBox(height: sizedBoxMedium),
          Row(children: [
            Expanded(
                child: SizedBox(
                    child: TextField(
              onChanged: (value) => _runFilter(value),
            ))),
            SizedBox(width: sizedBoxMedium)
          ]),
          SizedBox(height: sizedBoxLarge),
          Expanded(
              child: ListView.separated(
            itemBuilder: (_, index) {
              var pokemonPreviewModel = _foundPokemon[index];
              return PokemonPreviewItem(
                  pokemonPreviewModel: pokemonPreviewModel);
            },
            separatorBuilder: (_, __) =>
                Divider(indent: dividerIntent, endIndent: dividerIntent),
            itemCount: _foundPokemon.length,
          )),
        ],
      ),
    );
  }
}
