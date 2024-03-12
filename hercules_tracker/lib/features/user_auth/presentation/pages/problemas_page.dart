import 'package:flutter/material.dart';
import 'package:hercules_tracker/features/user_auth/presentation/pages/home_page.dart';

class ProblemasComunes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Problemas Hormonales",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "assets/img/banner_problemas.png",
                  width: 400,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Problemas Hormonales Comunes en Hombres",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              _buildHormonalProblem(
                  "Hipogonadismo",
                  " Hormonas implicadas: Principalmente la testosterona.\n\n• Descripción: El hipogonadismo se refiere a una deficiencia en la producción de testosterona en los testículos. Puede ser de origen primario (problemas en los testículos) o secundario (problemas en la glándula pituitaria o hipotálamo).\n\n• Síntomas: Disminución del deseo sexual, fatiga, pérdida de masa muscular, disfunción eréctil y cambios en el estado de ánimo.\n\n• Tratamiento: Terapia de reemplazo de testosterona, cambios en el estilo de vida y tratamiento de las causas subyacentes."
              ),
              _buildHormonalProblem(
                  "Disfunción Eréctil",
                  " Hormonas implicadas: Testosterona, así como factores vasculares y nerviosos.\n\n• Descripción: La disfunción eréctil es la incapacidad persistente para lograr o mantener una erección suficiente para tener relaciones sexuales satisfactorias.\n\n• Síntomas: Dificultad para lograr o mantener una erección, pérdida de interés en el sexo, ansiedad y estrés.\n\n• Tratamiento: Medicamentos (como inhibidores de la fosfodiesterasa-5), terapia psicológica, cambios en el estilo de vida y tratamiento de las causas subyacentes."
              ),
              _buildHormonalProblem(
                  "Ginecomastia",
                  " Hormonas implicadas: Estrógeno y testosterona.\n\n• Descripción: La ginecomastia es el crecimiento anormal del tejido mamario en hombres, resultando en senos más grandes.\n\n• Síntomas: Aumento del tejido mamario, sensibilidad en los senos.\n\n• Tratamiento: Medicamentos, cirugía."
              ),
              _buildHormonalProblem(
                  "Síndrome de Klinefelter",
                  " Hormonas implicadas: Testosterona y desequilibrios genéticos.\n\n• Descripción: El síndrome de Klinefelter es un trastorno genético que afecta a los hombres, resultando en la presencia de un cromosoma X adicional (XXY) en lugar del patrón normal XY.\n\n• Síntomas: Hipogonadismo, ginecomastia, infertilidad, entre otros.\n\n• Tratamiento: Terapia de reemplazo de testosterona, apoyo psicológico y tratamiento de los síntomas específicos."
              ),
              _buildHormonalProblem(
                  "Infertilidad Masculina",
                  " Hormonas implicadas: Testosterona y otras hormonas involucradas en la producción de espermatozoides.\n\n• Descripción: La infertilidad masculina se refiere a la incapacidad de un hombre para producir espermatozoides saludables o para fertilizar un óvulo.\n\n• Síntomas: Dificultad para concebir un hijo.\n\n• Tratamiento: Medicamentos, cirugía, técnicas de reproducción asistida."
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
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomePage()), (route) => false);
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

  Widget _buildHormonalProblem(String title, String content) {
    List<String> parts = content.split('\n• ');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: parts.map((part) {
            if (part.isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(left:25.0), // Ajusta el valor de acuerdo a tus necesidades
                child: Text(
                  '• $part',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
              );
            } else {
              return SizedBox.shrink();
            }
          }).toList(),
        ),
      ],
    );
  }

}
