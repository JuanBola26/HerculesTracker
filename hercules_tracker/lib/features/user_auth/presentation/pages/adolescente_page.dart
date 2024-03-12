import 'package:flutter/material.dart';
import 'package:hercules_tracker/features/user_auth/presentation/pages/home_page.dart';

class AdolescentePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Adolescencia",
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
                  "assets/img/banner_adolescencia.png",
                  width: 400,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "La adolescencia es una etapa de transición entre la infancia y la adultez, generalmente comprendida entre los 10 y los 19 años de edad. Durante este período, los adolescentes experimentan una serie de cambios físicos, emocionales y hormonales significativos, y las hormonas juegan un papel fundamental en estos procesos. Aquí tienes información sobre las hormonas que participan en la adolescencia masculina y cómo afectan a los hombres en esta etapa:",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                "Hormonas principales en la adolescencia masculina:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              _buildInfo(
                  "Gonadotropina-Releasing Hormone (GnRH):",
                  "Esta hormona es producida por el hipotálamo y desempeña un papel clave en el inicio y la regulación de la pubertad al estimular la producción de hormonas sexuales."
              ),
              _buildInfo(
                  "Hormona luteinizante (LH):",
                  "La LH es producida por la glándula pituitaria y estimula las células de Leydig en los testículos para producir testosterona."
              ),
              _buildInfo(
                  "Hormona foliculoestimulante (FSH):",
                  "La FSH también es producida por la glándula pituitaria y estimula la producción de espermatozoides en los testículos."
              ),
              _buildInfo(
                  "Testosterona:",
                  "La testosterona es la principal hormona sexual masculina y es responsable del desarrollo de las características sexuales secundarias y la regulación de la función sexual."
              ),
              SizedBox(height: 16),
              Text(
                "Cambios hormonales y físicos en la adolescencia masculina:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              _buildInfo(
                  "Crecimiento y desarrollo:",
                  "Durante la adolescencia, los hombres experimentan un rápido crecimiento en estatura y peso debido al aumento en la producción de la hormona del crecimiento y la testosterona. También hay un aumento en la masa muscular y la anchura de los hombros.",
              ),
              _buildInfo(
                  "Comportamiento:",
                  "Desde el punto de vista hormonal masculino, los cambios hormonales durante la adolescencia pueden desempeñar un papel importante en el estado de ánimo y el comportamiento. Durante la adolescencia, los niveles de hormonas como la testosterona aumentan significativamente en los varones. Este aumento hormonal puede afectar el estado de ánimo y el comportamiento de diversas maneras. Por ejemplo, la testosterona está asociada con la agresividad y la impulsividad, lo que puede contribuir a cambios de humor repentinos y comportamientos difíciles de manejar. Además, los cambios hormonales pueden influir en la química cerebral y en la forma en que el cerebro procesa la información emocional. Esto puede hacer que los adolescentes sean más propensos a experimentar emociones intensas, incluida la tristeza y la irritabilidad."
              ),
              _buildInfo(
                  "Desarrollo sexual:",
                  "Los órganos sexuales masculinos continúan desarrollándose y madurando. Los testículos y el pene alcanzan su tamaño adulto y se produce una mayor producción de espermatozoides."
              ),
              _buildInfo(
                  "Cambio en la voz:",
                  "La laringe y las cuerdas vocales continúan desarrollándose, lo que puede causar fluctuaciones en la voz y eventualmente se estabiliza en una voz más profunda y resonante."
              ),
              _buildInfo(
                  "Crecimiento del vello corporal:",
                  "El vello facial, axilar, púbico y en otras áreas del cuerpo se vuelve más grueso y oscuro. El vello corporal alcanza su distribución adulta."
              ),
              _buildInfo(
                  "Cambios en la piel:",
                  "La piel puede volverse más grasa debido al aumento en la producción de sebo, lo que puede conducir a la aparición de acné y espinillas."
              ),
              _buildInfo(
                  "Cambios emocionales y sociales:",
                  "Los cambios hormonales pueden influir en el estado de ánimo, la energía y la personalidad de los adolescentes. Pueden experimentar cambios de humor más frecuentes, así como una mayor exploración de la identidad y las relaciones sociales."
              ),
              _buildInfo(
                  "Interés en el sexo opuesto:",
                  "Durante la adolescencia, los hombres comienzan a experimentar un interés creciente en el sexo opuesto y pueden iniciar relaciones románticas y sexuales."
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
