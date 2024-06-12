import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: "PalavrasAleatorias",
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange)),
        home: HomePage(),
      ),
    );
  }
}

class AppState extends ChangeNotifier {
  var palavra_aleatoria = WordPair.random();
  var palavras_favoritas = <WordPair>[];

  void getNext() {
    palavra_aleatoria = WordPair.random();
    notifyListeners();
  }

  void switchFavorite() {
    if (palavras_favoritas.contains(palavra_aleatoria)) {
      palavras_favoritas.remove(palavra_aleatoria);
    } else {
      palavras_favoritas.add(palavra_aleatoria);
    }
    print(palavras_favoritas);
    notifyListeners();
  }
  //void toggleFavorite
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    var icon;
    if (appState.palavras_favoritas.contains(appState.palavra_aleatoria)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyCard(appState: appState),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    appState.switchFavorite();
                  },
                  child: Icon(icon),
                ),
                SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    appState.getNext();
                  },
                  child: Text("Next"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.appState,
  });

  final AppState appState;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!
        .copyWith(color: theme.colorScheme.onPrimary);
    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          appState.palavra_aleatoria.asSnakeCase,
          style: style,
        ),
      ),
    );
  }
}
