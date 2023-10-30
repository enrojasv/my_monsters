import 'package:flutter/material.dart';

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
        Text('Search'),
        Row(
          children: [
            Expanded(child: SizedBox(child: TextField())),
            ElevatedButton(onPressed: () {}, child: Text('Search'))
          ],
        ),
        Expanded(
            child: ListView(
          children: [Text('Item1'), Text('Item2')],
        ))
      ],
    );
  }
}
