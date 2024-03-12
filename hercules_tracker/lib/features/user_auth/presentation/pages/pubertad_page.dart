import 'package:flutter/material.dart';

class PaginaPubertad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Pubertad",
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
                  "assets/img/banner_pubertad.png",
                  width: 400,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Durante la pubertad, los adolescentes experimentan una serie de cambios físicos, emocionales y hormonales significativos que los llevan de la infancia a la adultez. Aquí tienes información sobre las hormonas que participan en la pubertad masculina y cómo afectan a los hombres en esta etapa:",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                "Hormonas principales en la pubertad masculina:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: _buildInfo(
                    "Gonadotropina-Releasing Hormone (GnRH):",
                    "Esta hormona es producida por el hipotálamo en el cerebro y desempeña un papel crucial en el inicio de la pubertad. Estimula la glándula pituitaria para que produzca hormonas que afectan el desarrollo sexual."
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: _buildInfo(
                    "Hormona luteinizante (LH):",
                    "La LH es producida por la glándula pituitaria y, en la pubertad, es responsable de estimular las células de Leydig en los testículos para que produzcan testosterona."
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: _buildInfo(
                    "Hormona foliculoestimulante (FSH):",
                    "La FSH también es producida por la glándula pituitaria y ayuda a estimular la producción de espermatozoides en los testículos."
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: _buildInfo(
                    "Testosterona:",
                    "La testosterona es la principal hormona sexual masculina y es producida en los testículos. Durante la pubertad, los niveles de testosterona aumentan significativamente, lo que desencadena una serie de cambios físicos y emocionales en los hombres."
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Cambios hormonales y físicos en la pubertad masculina:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              _buildInfo(
                  "Crecimiento y desarrollo:",
                  "Durante la pubertad, los adolescentes experimentan un aumento rápido en la estatura y el peso debido al aumento en la producción de la hormona del crecimiento y la testosterona. También ocurre un aumento en la masa muscular y la anchura de los hombros."
              ),
              _buildInfo(
                  "Desarrollo de los órganos sexuales:",
                  "Los testículos y el pene crecen en tamaño y se vuelven más maduros. Además, comienza la producción de espermatozoides."
              ),
              _buildInfo(
                  "Cambio en la voz:",
                  "La laringe y las cuerdas vocales de los adolescentes se desarrollan, lo que conduce a un cambio en la voz conocido como 'cambio de voz'. La voz se vuelve más profunda y resonante."
              ),
              _buildInfo(
                  "Crecimiento del vello corporal:",
                  "Se produce un aumento en el crecimiento del vello facial, axilar, púbico y en otras áreas del cuerpo. El vello se vuelve más oscuro y grueso."
              ),
              _buildInfo(
                  "Cambios en la piel:",
                  "La piel puede volverse más grasa debido al aumento en la producción de sebo, lo que puede provocar acné y espinillas."
              ),
              _buildInfo(
                  "Cambios emocionales y sociales:",
                  "Los cambios hormonales pueden influir en el estado de ánimo, la energía y la personalidad de los adolescentes. Pueden experimentar cambios de humor más frecuentes y ser más susceptibles a la irritabilidad y la agresividad."
              ),
              _buildInfo(
                  "Interés en el sexo opuesto:",
                  "Durante la pubertad, los adolescentes comienzan a experimentar un interés creciente en el sexo opuesto y a explorar su sexualidad."
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
}
