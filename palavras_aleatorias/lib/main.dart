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
        home: HomePage(),
      ),
    );
  }
}

class AppState extends ChangeNotifier {
  var palavra_aleatoria = WordPair.random();

  void getNext() {
    palavra_aleatoria = WordPair.random();
    notifyListeners();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Palavra Aleatória:"),
            Text(
              appState.palavra_aleatoria.asSnakeCase,
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                appState.getNext();
              },
              child: Text("Next"),
            )
          ],
        ),
      ),
    );
  }
}
