import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var info = 'Bienvenue Gallagher';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application de Teste',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Soir(),
    );
  }
}

class Soir extends StatefulWidget {
  const Soir({super.key});

  @override
  State<Soir> createState() => _SoirState();
}

class _SoirState extends State<Soir> {
  var info = 'Bienvenue Gallagher';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    info = "j'apprend Flutter";
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info),
      ),
      body: ElevatedButton(
        child: const Text("Valider "),
        onPressed: () => {
          // ignore: avoid_print
          print("Validation Ok !"),
          setState(() {
            info = ' Changeons de Titre';
          }),
        },
      ),
    );
  }
}
