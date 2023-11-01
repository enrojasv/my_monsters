import 'package:flutter/material.dart';
import 'package:my_monsters/app/repository/pokemon_preview_repository.dart';
import 'package:my_monsters/app/view/components/pokemon_preview_item.dart';
import 'package:my_monsters/app/view/details_view.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    var pokemonPreviewRepository = PokemonPreviewRepository();
    var pokemonData = pokemonPreviewRepository.getMockData();

    var theme = Theme.of(context);


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        children: [
          const Text('Search'),
          Row(
            children: [
              const Expanded(child: SizedBox(child: TextField())),
              ElevatedButton(onPressed: () {}, child: const Text('Search'))
            ],
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsView()),
                );
              },
              child: Text("Details")),
          Expanded(
              child: ListView.separated(
            itemBuilder: (_, index) {
              var pokemonPreviewModel = pokemonData[index];

              return PokemonPreviewItem(pokemonPreviewModel: pokemonPreviewModel);
            },
            separatorBuilder: (_, __) => const SizedBox(height: 0),
            itemCount: pokemonData.length,
          ))
        ],
      ),
    );
  }
}
