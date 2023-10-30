import 'package:flutter/material.dart';
import 'package:my_monsters/app/view/components/pokemon_preview_item.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Search'),
        Row(
          children: [
            const Expanded(child: SizedBox(child: TextField())),
            ElevatedButton(onPressed: () {}, child: const Text('Search'))
          ],
        ),
        Expanded(
            child: ListView.separated(
          itemBuilder: (_, index) => const PokemonPreviewItem(),
          separatorBuilder: (_, __) => const SizedBox(height: 0),
          itemCount: 9,
        ))
      ],
    );
  }
}
