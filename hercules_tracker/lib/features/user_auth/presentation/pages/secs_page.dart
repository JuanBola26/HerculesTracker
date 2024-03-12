import 'package:flutter/material.dart';
import 'package:hercules_tracker/features/user_auth/presentation/pages/home_page.dart';

class SexualPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Sexualidad",
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
                  "assets/img/banner_sexualidad.png",
                  width: 400,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Sexo y Hormonas Masculinas",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 16),
              Text(
                "El sexo y las hormonas masculinas están estrechamente relacionados, ya que las hormonas desempeñan un papel crucial en el impulso sexual, la función eréctil y la salud sexual en general. La testosterona, en particular, es la principal hormona sexual masculina y juega un papel clave en la libido, la producción de espermatozoides y la función eréctil. Además de la testosterona, otras hormonas como el estrógeno y la hormona del crecimiento también pueden influir en la salud sexual masculina. A continuación, se analiza cómo las hormonas masculinas afectan el rendimiento sexual y su relación con ciertas enfermedades o padecimientos.",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              _buildHormonalInfo(
                  "Testosterona y Rendimiento Sexual",
                  "• Libido: La testosterona es fundamental para mantener un impulso sexual saludable en los hombres. Niveles bajos de testosterona pueden resultar en una disminución del deseo sexual o libido.\n\n•Función Eréctil: La testosterona también desempeña un papel en la función eréctil al influir en la producción de óxido nítrico, un vasodilatador que ayuda a mantener la erección. Niveles bajos de testosterona pueden contribuir a la disfunción eréctil.\n\n• Producción de Espermatozoides: La testosterona es necesaria para la producción de espermatozoides en los testículos. Niveles bajos de testosterona pueden afectar la calidad y cantidad de espermatozoides, lo que puede provocar infertilidad."
              ),
              _buildHormonalInfo(
                  "Otras Hormonas y Salud Sexual",
                  "•Estrógeno: Aunque se asocia comúnmente con las mujeres, los hombres también producen estrógeno en cantidades más pequeñas. El equilibrio adecuado entre testosterona y estrógeno es importante para la salud sexual masculina.\n\n• Hormona del Crecimiento (GH): La GH también puede influir en la salud sexual masculina al mejorar la circulación sanguínea, promover la reparación celular y contribuir al bienestar general."
              ),
              _buildHormonalInfo(
                  "Relación con Enfermedades o Padecimientos",
                  "• Hipogonadismo: El hipogonadismo, o niveles bajos de testosterona, puede afectar negativamente la libido, la función eréctil y la calidad de vida sexual en los hombres.\n\n• Diabetes: La diabetes puede afectar la función eréctil al dañar los nervios y los vasos sanguíneos. Además, puede contribuir a niveles bajos de testosterona.\n\n• Enfermedades Cardíacas: Las enfermedades cardíacas pueden afectar la circulación sanguínea, lo que puede influir en la función eréctil. Además, algunos tratamientos para enfermedades cardíacas pueden afectar los niveles de testosterona.\n\n• Obesidad: La obesidad está relacionada con niveles bajos de testosterona, lo que puede afectar la libido y la función eréctil en los hombres."
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
                Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> HomePage()), (route) => false);
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

  Widget _buildHormonalInfo(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 20.0), // Ajusta el valor según tus necesidades
          child: Text(
            content,
            style: TextStyle(fontSize: 18, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
