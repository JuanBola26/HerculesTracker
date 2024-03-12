import 'package:flutter/material.dart';

class PaginaNinez extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Niñez",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
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
                  "assets/img/banner_ninez.png",
                  width: 400,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Durante la niñez, los niños experimentan una serie de cambios físicos y hormonales que preparan el camino para la pubertad y la adolescencia. Aquí hay información sobre las hormonas que participan en la niñez masculina y cómo afectan a los hombres en esta etapa:",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                "Hormonas principales en la niñez masculina:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: _buildInfo(
                    "Gonadotropina-Releasing Hormone (GnRH):",
                    "Esta hormona es producida por el hipotálamo en el cerebro y es responsable de estimular la producción de otras hormonas relacionadas con la reproducción, como la hormona luteinizante (LH) y la hormona foliculoestimulante (FSH)."
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: _buildInfo(
                    "Hormona luteinizante (LH):",
                    "La LH es producida por la glándula pituitaria y, en los niños, desempeña un papel importante en el desarrollo de los testículos y la producción de testosterona."
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: _buildInfo(
                    "Hormona foliculoestimulante (FSH):",
                    "La FSH también es producida por la glándula pituitaria y ayuda en la maduración de los espermatozoides en los testículos."
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Cambios hormonales y físicos en la niñez masculina:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              _buildInfo(
                  "Crecimiento y desarrollo:",
                  "Durante la niñez, los niños experimentan un crecimiento gradual en estatura y peso. Las hormonas, especialmente la GH (hormona del crecimiento) secretada por la glándula pituitaria, son responsables de este crecimiento. Los huesos también se desarrollan y fortalecen durante esta etapa."
              ),
              _buildInfo(
                  "Desarrollo de los órganos sexuales:",
                  "Las hormonas GnRH, LH y FSH comienzan a activarse durante la niñez, preparando el cuerpo para la pubertad. Los testículos comienzan a crecer y producir pequeñas cantidades de testosterona, aunque los niveles son mucho más bajos que durante la pubertad."
              ),
              _buildInfo(
                  "Cambio en la voz:",
                  "A medida que los niños entran en la niñez, pueden experimentar cambios en su voz debido al crecimiento de la laringe y las cuerdas vocales. Este es el comienzo del proceso de cambio de voz que se completará durante la pubertad."
              ),
              _buildInfo(
                  "Crecimiento del vello corporal:",
                  "Algunos niños pueden comenzar a notar un ligero crecimiento de vello en áreas como el pubis y las axilas durante la niñez. Esto es el resultado de la actividad hormonal en preparación para la pubertad."
              ),
              _buildInfo(
                  "Cambios emocionales y sociales:",
                  "Aunque no todos los cambios durante la niñez son físicos, las hormonas también pueden influir en el desarrollo emocional y social de los niños. Pueden experimentar cambios en el estado de ánimo y comenzar a mostrar interés en actividades sociales y relaciones con sus compañeros."
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
