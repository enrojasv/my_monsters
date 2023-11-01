import 'package:flutter/material.dart';
import 'package:my_monsters/app/view/favorites_view.dart';
import 'package:my_monsters/app/view/search_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedIndex = 0;
  var navigationColor = Colors.white70;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case Constant.optionSearchView:
        page = const SearchView();
        break;
      case Constant.optionFavoritesView:
        page = const FavoritesView();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              child: ColoredBox(
            color: navigationColor,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: page,
            ),
          )),
          NavigationBar(
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.search_rounded), label: 'Search'),
              NavigationDestination(
                  icon: Icon(Icons.favorite_border_rounded), label: 'Favorites'),
            ],
            selectedIndex: selectedIndex,
            onDestinationSelected: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
          )
        ],
      ),
    );
  }
}

class Constant {
  Constant._();

  static const optionSearchView = 0;
  static const optionFavoritesView = 1;
}
