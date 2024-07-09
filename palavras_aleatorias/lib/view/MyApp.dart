import 'package:flutter/material.dart';
import 'package:palavras_aleatorias/view/LoginPage.dart';
import 'package:provider/provider.dart';
import 'package:english_words/english_words.dart';
import 'package:palavras_aleatorias/view/HomePage.dart';

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
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
        home: LoginPage(),
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

  void switchFavorite({WordPair? palavra}) {
    palavra ??= palavra_aleatoria;

    if (palavras_favoritas.contains(palavra)) {
      palavras_favoritas.remove(palavra);
    } else {
      palavras_favoritas.add(palavra);
    }

    print(palavras_favoritas);
    notifyListeners();
  }
  //void toggleFavorite
}
