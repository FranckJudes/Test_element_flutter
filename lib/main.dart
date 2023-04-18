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
      home: const MonTest(),
    );
  }
}
/*
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
*/

class MonTest extends StatefulWidget {
  const MonTest({super.key});

  @override
  State<MonTest> createState() => _MonTestState();
}

class _MonTestState extends State<MonTest> {
  String value = 'Bienvenue Chez Gallagher';
  String value1 = 'Bienvenue Chez Franck';
  String value3 = "";
  int val1 = 0;
  int val2 = 0;

  void change1(int s) {
    setState(() {
      val1 = s;
    });
  }
  void change2(int t) {
    setState(() {
      val2 = t;
    });
  }

  void onclick() {
    setState(() {
      value = 'Tutoriel pour debutant';
    });
  }

  void onclick2(String value2) {
    setState(() {
      value1 = value2;
    });
  }

  void onShow() {
    setState(() {
      value3 = DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    //   return Scaffold(
    //     appBar: AppBar(
    //       title: const Text("Les Buttons"),
    //     ),
    //     body: Column(
    //       // Creer une colone
    //       mainAxisAlignment: MainAxisAlignment
    //           .center, // Specifier l'alignement de la colone (center,bottom , top,left)
    //       children: <Widget>[
    //         ElevatedButton(
    //           onPressed: () => onclick(),
    //           child: const Text(
    //             "Premier Button",
    //             style: TextStyle(color: Colors.black),
    //           ),
    //         ),
    //         Text(value, style: TextStyle(color: Colors.green, fontSize: 40),),
    //         const Divider(height: 10), // Permet de creer un espacement
    //         ElevatedButton(
    //           onPressed: () => onclick2('Tutoriel Pour les Professionnels'),
    //           child: const Text(
    //             "Deuxieme Button",
    //             style: TextStyle(color: Colors.white),
    //           ),
    //         ),
    //         Text(value1, style: TextStyle(color: Colors.black, fontSize: 40),),

    //       ],
    //     ),
    //   );
    // }
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Telegram",
          textAlign: TextAlign.left,
        ),
      ),
      // Le corps de la page
      body: Column(
        children: <Widget>[
          Text(
            "Heure et Date = $value3",
            style: const TextStyle(
                fontSize: 17, color: Color.fromARGB(255, 64, 153, 255)),
            textAlign: TextAlign.center,
          ),
          Center(
            child: Column(children: const <Widget>[
               Text("Bienvenue Chez gallagher", style: TextStyle(color: Colors.deepPurple),),
            ]),
          )
        ],
        
      ),
      
      //footer
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          onShow();
        },
        backgroundColor: Colors.redAccent,
        label: const Text("Heure"),
        icon: const Icon(Icons.timer),
        //  child: const Icon(Icons.timer),
      ),
    );
  }
}
