import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hercules_tracker/features/user_auth/presentation/pages/account_page.dart';
import 'package:hercules_tracker/features/user_auth/presentation/pages/child_page.dart';
import 'package:hercules_tracker/features/user_auth/presentation/pages/hormonas_page.dart';
import 'package:hercules_tracker/features/user_auth/presentation/pages/testosterona_page.dart';

class CardItem{
  final String arImage;
  final String title;
  final String subtitle;
  final Widget page;

  const CardItem({
    required this.arImage,
    required this.title,
    required this.subtitle,
    required this.page,
  });
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _titulo = '';
  String _contenido = '';

  List<CardItem> items = [
    CardItem(
      arImage: "assets/img/testosterona.jpeg",
      title: "Hormonas",
      subtitle: "Ver",
      page: PaginaHormonas(), // Página correspondiente a la tarjeta
    ),
    CardItem(
      arImage: "assets/img/img_testosterona.jpeg",
      title: "Testosterona",
      subtitle: "Ver",
      page: PaginaImportanciaTestosterona(), // Página correspondiente a la tarjeta
    ),
    CardItem(
      arImage: "assets/img/etapa_niño.jpeg",
      title: "Etapa de la Niñez",
      subtitle: "Ver",
      page: PaginaNinez(), // Página correspondiente a la tarjeta
    ),
  ];

  @override
  void initState() {
    super.initState();
    cargarContenido();
  }

  Future<void> cargarContenido() async {
    // Cargar el archivo JSON desde los activos
    String jsonString = await rootBundle.loadString('assets/Contenido/prueba.json');
    // Parsear el contenido JSON
    Map<String, dynamic> data = json.decode(jsonString);
    // Obtener el título y contenido del JSON
    setState(() {
      _titulo = data['titulo'];
      _contenido = data['contenido'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Hercules Tracker",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  _titulo,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  _contenido,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 226, // Altura definida para el ListView
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              separatorBuilder: (context, _) => SizedBox(width: 15),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  // Navegar a la página correspondiente cuando se hace clic en la tarjeta
                  Navigator.push(context, MaterialPageRoute(builder: (context) => items[index].page));
                },
                child: buildCard(item: items[index]),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                // Acción cuando se presiona el ícono de inicio
              },
              icon: Icon(Icons.home, color: Colors.white, size: 40),
            ),
            IconButton(
              onPressed: () {
                // Acción cuando se presiona el ícono de nota
              },
              icon: Icon(Icons.note_alt_rounded, color: Colors.white, size: 40),
            ),
            IconButton(
              onPressed: () {
                // Acción cuando se presiona el ícono de calendario
              },
              icon: Icon(Icons.calendar_today, color: Colors.white, size: 40),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> AccountPage()), (route) => false);
              },
              icon: Icon(Icons.person, color: Colors.white, size: 40),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard({
    required CardItem item,
  }) => Container(
    width: 200,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 2/1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                item.arImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 1),
        Expanded(
          child: Container(
            color: Colors.transparent,
            child: Center(
              child: Text(
                item.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

