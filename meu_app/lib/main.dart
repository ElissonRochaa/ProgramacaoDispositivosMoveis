import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Titulo da aplicação",
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/second': (context) => SecondPage()
      },
      initialRoute: '/home',
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void mostrarNoConsole(String nome) {
    print("Clicou em $nome");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Cabeçalho"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Primeiro elemento",
            style: TextStyle(fontSize: 30),
          ),
          Text("Segundo elemento", style: TextStyle(fontSize: 26)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {
                    mostrarNoConsole("Primeiro Botão");
                  },
                  child: Icon(Icons.favorite)),
              ElevatedButton(
                  onPressed: () {
                    mostrarNoConsole("Elevate Button");
                  },
                  child: Icon(Icons.share)),
              IconButton(
                  onPressed: () {
                    mostrarNoConsole("Icon Button");
                  },
                  icon: Icon(Icons.comment))
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mostrarNoConsole("Botão flutuante");
          Navigator.pushNamed(context, '/second');
        },
        child: Icon(Icons.plus_one),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Teste2")
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda página"),
      ),
      body: Center(
        child: Text("SEgunda página"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.backspace),
      ),
    );
  }
}
