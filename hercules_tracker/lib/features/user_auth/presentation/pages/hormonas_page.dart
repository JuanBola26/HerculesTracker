import 'package:flutter/material.dart';

class PaginaHormonas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hormonas",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0), // Modificación del padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "assets/img/banner_hormonas.png",
                  width: 400,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "¿Qué son las hormonas?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              Text(
                "Las hormonas son como pequeños mensajeros químicos que nuestro cuerpo utiliza para comunicarse entre diferentes partes. Son producidas por glándulas especializadas en el cuerpo y viajan a través del torrente sanguíneo para llegar a diferentes órganos y tejidos. Las hormonas son esenciales para regular una amplia gama de funciones corporales, desde el crecimiento y desarrollo hasta el metabolismo y el estado de ánimo.",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                "Hormonas principales en hombres:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              _buildHormonaInfo(
                  "1. Testosterona:",
                  "La testosterona es la principal hormona sexual masculina y desempeña un papel fundamental en el desarrollo y mantenimiento de las características sexuales masculinas. Se produce en los testículos, pero también en cantidades menores en las glándulas suprarrenales. La testosterona es responsable de promover el desarrollo de los órganos sexuales masculinos durante la pubertad, así como el crecimiento muscular, la producción de esperma y la regulación del deseo sexual."
              ),
              _buildHormonaInfo(
                  "2. Hormona luteinizante (LH):",
                  "La hormona luteinizante es una hormona liberadora de gonadotropina producida en la glándula pituitaria. En los hombres, estimula las células de Leydig en los testículos para producir testosterona. Juega un papel clave en la regulación del equilibrio hormonal masculino y la producción de testosterona."
              ),
              _buildHormonaInfo(
                  "3. Hormona foliculoestimulante (FSH):",
                  "La hormona foliculoestimulante también es producida por la glándula pituitaria y juega un papel importante en la reproducción masculina. En los hombres, estimula la producción de esperma en los testículos mediante la activación de las células de Sertoli en los túbulos seminíferos."
              ),

              SizedBox(height: 16),
              Text(
                "Diferencias entre hombres y mujeres:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "assets/img/h_v_m.png",
                  width: 500,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Una de las diferencias más evidentes entre hombres y mujeres radica en sus perfiles hormonales. En los hombres, la testosterona es la hormona predominante, mientras que en las mujeres, las hormonas principales son el estrógeno y la progesterona. Esta diferencia hormonal es responsable de las características sexuales secundarias distintivas de cada género, como la distribución del vello corporal, la masa muscular y las características faciales.",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                "Importancia de las hormonas masculinas:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              Text(
                "Las hormonas masculinas, especialmente la testosterona, desempeñan un papel vital en el desarrollo y mantenimiento de la salud masculina. La testosterona es fundamental para el desarrollo de los órganos sexuales masculinos, así como para el crecimiento muscular, la densidad ósea y la distribución del vello corporal. Además, la testosterona también influye en el estado de ánimo, la libido y la salud cardiovascular en los hombres. Un desequilibrio en las hormonas masculinas puede tener efectos adversos en la salud física y emocional de un hombre.",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.justify,
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

  Widget _buildHormonaInfo(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 55.0),
          child: Text(
            content,
            style: TextStyle(fontSize: 18, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
        ),
        SizedBox(height: 12),
      ],
    );
  }
}
