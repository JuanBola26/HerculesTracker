import 'package:flutter/material.dart';

class PaginaImportanciaTestosterona extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Testosterona",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Ajustando el padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "assets/img/banner_testosterona.png",
                  width: 400,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "¿Qué es la testosterona?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              Text(
                "La testosterona es una hormona que se produce principalmente en los testículos de los hombres y, en menor medida, en las glándulas suprarrenales. Es conocida como la hormona masculina porque desempeña un papel fundamental en el desarrollo y mantenimiento de las características sexuales masculinas.",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                "¿Cómo afecta al hombre?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              _buildInfo(
                  "Desarrollo físico:",
                  "Durante la pubertad, la testosterona es responsable del desarrollo de los órganos sexuales masculinos, así como del crecimiento muscular y óseo. También influye en la distribución del vello corporal y facial."
              ),
              _buildInfo(
                  "Salud sexual:",
                  "La testosterona juega un papel crucial en la libido o deseo sexual, así como en la función eréctil. Niveles adecuados de testosterona son necesarios para mantener una salud sexual óptima."
              ),
              _buildInfo(
                  "Estado de ánimo:",
                  "La testosterona puede influir en el estado de ánimo de los hombres. Niveles bajos de testosterona pueden estar asociados con síntomas de depresión, irritabilidad y fatiga."
              ),
              _buildInfo(
                  "Salud general:",
                  "La testosterona también afecta la salud general de los hombres, incluyendo la producción de glóbulos rojos, la densidad ósea y la distribución de la grasa corporal."
              ),
              SizedBox(height: 16),
              Text(
                "¿Qué pasa si los niveles de testosterona están bajos?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: _buildInfoList(
                    "Problemas asociados a niveles bajos de testosterona:",
                    [
                      "• Disminución del deseo sexual.",
                      "• Problemas de erección.",
                      "• Fatiga y falta de energía.",
                      "• Pérdida de masa muscular y fuerza.",
                      "• Aumento de la grasa corporal, especialmente alrededor del abdomen.",
                      "• Cambios de humor, como depresión o irritabilidad.",
                      "• Pérdida de densidad ósea, aumentando el riesgo de osteoporosis."
                    ]
                ),
              ),
              SizedBox(height: 16),
              Text(
                "¿Qué pasa si los niveles de testosterona están altos?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: _buildInfoList(
                    "Problemas asociados a niveles altos de testosterona:",
                    [
                      "• Acné y piel grasa.",
                      "• Aumento del vello corporal.",
                      "• Agresividad o comportamiento impulsivo.",
                      "• Problemas de salud sexual, como erecciones prolongadas o dolorosas.",
                      "• Riesgo aumentado de enfermedades cardiovasculares.",
                      "• Problemas de fertilidad, ya que niveles muy altos de testosterona pueden suprimir la producción de esperma."
                    ]
                ),
              ),
            ],
          ),
        ),
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
                // Acción cuando se presiona el ícono de persona
              },
              icon: Icon(Icons.person, color: Colors.white, size: 40),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfo(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(
          content,
          style: TextStyle(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 12),
      ],
    );
  }

  Widget _buildInfoList(String title, List<String> contentList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: contentList.map((content) => Text(content, style: TextStyle(fontSize: 18, color: Colors.white), textAlign: TextAlign.justify)).toList(),
        ),
        SizedBox(height: 12),
      ],
    );
  }
}
