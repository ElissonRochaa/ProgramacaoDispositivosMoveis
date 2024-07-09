import 'package:flutter/material.dart';
import 'package:palavras_aleatorias/view/MyApp.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    return ListView(
      children: [
        Text(
          "Minhas palavras favoritas:",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        for (var palavra in appState.palavras_favoritas)
          ListTile(
            leading: IconButton(
              onPressed: () {
                appState.switchFavorite(palavra: palavra);
              },
              icon: Icon(Icons.delete),
            ),
            title: Text(palavra.asSnakeCase),
          )
      ],
    );
  }
}


// Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text("Minhas palavras Favoritas:"),
//           Text("Aqui vai ter nossa lista...")
//         ],
//       ),
//     )