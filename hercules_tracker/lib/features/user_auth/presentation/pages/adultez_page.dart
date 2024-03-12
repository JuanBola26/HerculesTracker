import 'package:flutter/material.dart';
import 'package:hercules_tracker/features/user_auth/presentation/pages/home_page.dart';

class AdultezPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Adultez",
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
                  "assets/img/banner_adultez.png",
                  width: 400,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "En la adultez masculina, que generalmente se considera a partir de los 20 años en adelante, las hormonas continúan desempeñando un papel importante en el mantenimiento de la salud y el bienestar. Aunque los cambios hormonales no son tan dramáticos como durante la adolescencia, siguen influyendo en varios aspectos del cuerpo y la mente de los hombres. Aquí tienes información sobre las hormonas que participan en la adultez masculina y cómo afectan a los hombres en esta etapa:",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                "Hormonas principales en la adultez masculina:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: _buildInfo(
                    "Testosterona:",
                    "La testosterona sigue siendo la hormona principal en la adultez masculina. Aunque los niveles pueden disminuir ligeramente con la edad, la testosterona sigue siendo esencial para mantener la masa muscular, la densidad ósea, la libido y la función sexual."
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: _buildInfo(
                    "Hormona del crecimiento (GH):",
                    "Aunque la producción de la hormona del crecimiento disminuye con la edad, sigue desempeñando un papel en la reparación de tejidos, el metabolismo y la salud general."
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: _buildInfo(
                    "Hormona de la tiroides:",
                    "Las hormonas tiroideas, como la T3 y la T4, son cruciales para regular el metabolismo, la energía y el peso corporal. Los niveles de estas hormonas pueden cambiar con la edad y afectar la función metabólica."
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: _buildInfo(
                    "Cortisol:",
                    "La hormona cortisol, producida por las glándulas suprarrenales, regula el estrés y el metabolismo de los carbohidratos, proteínas y grasas. Los niveles de cortisol pueden verse afectados por el estrés crónico y el estilo de vida."
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Cambios hormonales y físicos en la adultez masculina:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              _buildInfo(
                  "Disminución de la producción de testosterona:",
                  "Con el envejecimiento, es común que los hombres experimenten una disminución gradual en la producción de testosterona. Esto puede resultar en una pérdida de masa muscular, disminución de la libido, fatiga y cambios en el estado de ánimo."
              ),
              _buildInfo(
                  "Cambios en la composición corporal:",
                  "Con la edad, muchos hombres experimentan un aumento en la grasa corporal, especialmente alrededor del abdomen. Esto puede deberse en parte a la disminución de la testosterona y la actividad física reducida."
              ),
              _buildInfo(
                  "Cambios en la piel y el cabello:",
                  "La piel puede volverse más delgada y menos elástica con la edad, lo que puede causar arrugas y flacidez. Además, muchos hombres experimentan una pérdida de cabello gradual o calvicie de patrón masculino con la edad."
              ),
              _buildInfo(
                  "Cambios en la voz:",
                  "Aunque los cambios en la voz son más prominentes durante la adolescencia, algunos hombres pueden experimentar una ligera disminución en la calidad de su voz con el envejecimiento debido a cambios en las cuerdas vocales y la laringe."
              ),
              _buildInfo(
                  "Cambios en el humor y la personalidad:",
                  "A medida que los hombres envejecen, pueden experimentar cambios en el humor, la personalidad y la perspectiva de la vida. Algunos pueden volverse más reflexivos y centrados en sus relaciones y metas personales."
              ),
              _buildInfo(
                  "Salud sexual:",
                  "La función sexual puede verse afectada por cambios hormonales, así como por factores psicológicos y físicos relacionados con la edad. Algunos hombres pueden experimentar disfunción eréctil o problemas de libido con el tiempo."
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
}
