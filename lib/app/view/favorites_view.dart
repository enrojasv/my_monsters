import 'package:flutter/material.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('My Favorites'),
        Expanded(child: ListView(children: [Text('Item1'), Text('Item2')],))
      ],
    );
  }
}
