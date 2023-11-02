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

  @override
  Widget build(BuildContext context) {
    var pokemonPreviewRepository = PokemonPreviewRepository();
    var pokemonData = pokemonPreviewRepository.getMockData();
    // var pokemonFilteredData = [];

    var theme = Theme.of(context);
    var styleTitle =
        theme.textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold);

    var dividerIntent = 40.0;
    var paddingHorizontal = 24.0;
    var paddingVertical = 8.0;
    var sizedBoxMedium = 16.0;
    var sizedBoxLarge = 32.0;
    var textSearch = "Search";

    getFilteredListByName(pokemonData, " a ");

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingVertical),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(textSearch, style: styleTitle),
          SizedBox(height: sizedBoxMedium),
          Row(
            children: [
              Expanded(
                  child: SizedBox(
                      child: TextField(
                controller: searchController,
              ))),
              SizedBox(width: sizedBoxMedium),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          // Retrieve the text that the user has entered by using the
                          // TextEditingController.
                          content: Text(searchController.text),
                        );
                      },
                    );
                  },
                  child: const Icon(Icons.search_rounded))
            ],
          ),
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

  List<PokemonPreviewModel> getFilteredListByName(
      List<PokemonPreviewModel> originalPokemonList, String nameToFilter) {

    var cleanNameToFilter= nameToFilter.toLowerCase().trim();

    List<PokemonPreviewModel> filteredList = [];
    filteredList.addAll(originalPokemonList);

    filteredList.retainWhere((element) {
      return element.name.toLowerCase().contains(cleanNameToFilter);
    });

    return filteredList;
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    searchController.dispose();
    super.dispose();
  }
}
