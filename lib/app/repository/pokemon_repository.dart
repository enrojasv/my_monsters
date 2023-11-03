import '../model/pokemon_model.dart';

class PokemonRepository {
  var loremIpsum =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse aliquet tortor elementum, cursus massa at, consequat sem. Nunc a quam at libero sodales consectetur. Vivamus sem nulla, pretium dictum gravida ut, scelerisque quis massa.\nSuspendisse pulvinar ligula metus, eget rutrum leo rutrum nec. Nam tristique porttitor erat et rhoncus. Pellentesque tempus rutrum arcu ac consequat. Etiam congue gravida diam, quis tincidunt libero egestas nec.\nDonec iaculis efficitur eros id luctus. Vivamus vitae felis nec ipsum interdum scelerisque sit amet in libero. Donec dapibus interdum metus ac lacinia. Suspendisse blandit pulvinar varius. Phasellus blandit dictum porta. Curabitur eu ornare orci, ut eleifend dolor. Duis cursus velit sit amet felis sodales, eget laoreet metus vehicula. Aliquam congue purus arcu, at luctus sem elementum vel. Aenean eu porta turpis, a pretium ligula. Mauris nibh tortor, consequat sed leo quis, mollis interdum leo. Maecenas vel purus arcu. Nulla ultrices imperdiet dui in finibus. Vestibulum dolor sem, faucibus a risus et, cursus feugiat turpis. Morbi tellus metus, molestie id pharetra eget, tempus sit amet urna. Suspendisse venenatis diam ac faucibus tempor. Suspendisse suscipit, orci ut fringilla faucibus, eros purus congue leo, in ornare enim orci nec sapien. Praesent blandit fermentum egestas. Cras efficitur magna libero, sit amet commodo massa porttitor at. Proin pulvinar, lacus sit amet euismod fringilla, magna metus auctor tortor, sollicitudin vehicula purus justo quis nunc. Donec et laoreet nisi, vel luctus ipsum. Nunc id pulvinar elit. Mauris libero nisi, tincidunt et mi sit amet, ornare varius neque. Donec pharetra pellentesque purus ut dignissim. Maecenas eu euismod mauris, et consectetur tellus. Vestibulum non commodo orci, id ornare dolor. In luctus eget felis et volutpat. Aliquam convallis leo ac gravida ornare. In hac habitasse platea dictumst. Integer ornare venenatis odio, sed varius ante. Proin vestibulum dolor nec risus rhoncus, eleifend euismod mauris lobortis. Pellentesque blandit at nisi ac consectetur. Phasellus sollicitudin mauris eget metus suscipit, vitae suscipit orci varius. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec eget odio ut turpis suscipit auctor. Etiam convallis, diam sit amet ornare hendrerit, ligula tortor ullamcorper diam, convallis ultricies ligula lacus quis lectus. Nam aliquet lacus in massa mattis feugiat. Morbi dolor eros, luctus a accumsan eu, dignissim ut est. Nam at convallis enim. Aliquam erat volutpat. Nulla aliquet imperdiet mollis. Praesent sit amet odio scelerisque, pellentesque leo sit amet, placerat metus. Vestibulum facilisis rutrum aliquet. Nunc molestie faucibus ante sed iaculis. Aenean eget feugiat ligula. Ut sit amet libero ut orci ultricies finibus et ac sapien. Quisque tristique feugiat lacus viverra rutrum. Nulla sit amet odio tempor, pellentesque felis at, laoreet nunc. Integer in vestibulum mauris. Sed feugiat turpis est, ac molestie ex ultricies egestas. Sed congue aliquam turpis, non mollis dolor auctor eu. Quisque volutpat sed est vitae porttitor. Praesent aliquam dolor nisi, ac imperdiet nisi finibus nec.\n Duis ut sodales massa. Vivamus a diam non lectus faucibus hendrerit sed ac sapien. Cras porttitor massa a turpis cursus tempor. Maecenas laoreet porta mi, ac ullamcorper arcu vulputate ac. Praesent.";

  List<PokemonModel> getMockData() {
    final pokemonList = <PokemonModel>[
      PokemonModel.initData(
          name: "Bulbasaur",
          pokedex: "001",
          imageFront:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png",
          imageBack:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/1.png",
          favorite: false,
          type1: "Normal",
          type2: "None",
          description: loremIpsum),
      PokemonModel.initData(
          name: "Charmander",
          pokedex: "004",
          imageFront:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png",
          imageBack:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/4.png",
          favorite: false,
          type1: "Fuego",
          type2: "None",
          description: loremIpsum),
      PokemonModel.initData(
          name: "Squirtle",
          pokedex: "007",
          imageFront:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png",
          imageBack:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/7.png",
          favorite: false,
          type1: "Normal",
          type2: "None",
          description: loremIpsum),
    ];
    return pokemonList;
  }
}
