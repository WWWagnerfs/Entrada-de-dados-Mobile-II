import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EntradaDeDados(),
    );
  }
}

class EntradaDeDados extends StatefulWidget {
  const EntradaDeDados({super.key});

  @override
  State<EntradaDeDados> createState() => _EntradaDeDados();
}

class _EntradaDeDados extends State<EntradaDeDados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
        title: const Text('Entrada de Dados'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Seja bem vindo! Aplicativo para entrada de dados',
                style: TextStyle(fontSize: 18,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nome'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Idade'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'E-mail'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Celular'),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    shape: MaterialStatePropertyAll(
                      LinearBorder(),
                    ),
                  ),
                  onPressed: () {
                  },
                  icon: const Icon(Icons.file_download),
                  label: const Text('Salvar'),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
